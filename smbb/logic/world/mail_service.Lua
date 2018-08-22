---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
-- 邮件服务
-- @end
-- Created : 06. 七月 2018 17:36
---------------------------------------------------------------------
local queue = require "skynet.queue"
local cs = queue()

local skynet = require "skynet"
local service = require("lualib.service")

config_lib = require("logic.lib.config_lib")
requester = require "lualib.requester"
local smbb_util = require "logic.tool.smbb_util"
local smbb_misc = require "logic.tool.smbb_misc"
local reward_lib = require "logic.lib.reward_lib"
local smbb_mongo = require("logic.db.smbb_mongo")
local logger = require("lualib.logger")
local server_func = {}

local mail_dict = {} -- 所有玩家的当前邮件信息
--{roleid={}}
local add_dict = {} --新增邮件的缓存，单指还没存入数据库的部分
--{roleid=mails}
local del_dict = {} --需要删除的邮件
--{mailid=true,mailid=true,mailid....}
local read_dict = {} -- 需要标记已读的邮件列表
local draw_dict = {} -- 需要标记已领取奖励的邮件列表
local max_mail_num = 100

local mail_meta = {
    __index = function(table, roleid)
        -- 理论上所有的上线玩家的邮件信息都会load进内存，如果没
        -- 就给一个空做默认值
        local rmail_info = RECORD.mail_info_t()
        rmail_info.roleid = roleid
        return rmail_info
    end
}
setmetatable(mail_dict, mail_meta)

---get_role_mail
---@param roleid number
---@return mail[]
local function get_role_mail(roleid)
    return mail_dict[roleid].mails
end

---set_role_mail
---@param roleid number
---@param rmails mail[]
local function set_role_mail(roleid, rmails)
    mail_dict[roleid].mails = rmails
end

local function p_mail(mail)
    return {
        mailid = mail.mailid or 0
    ,tempid    = mail.tempid or 0
    ,subtype   = mail.subtype or 0
    ,title     = mail.title or ""
    ,content   = mail.content or ""
    ,reward    = reward_lib.p_reward(mail.reward) or {}
    ,isread    = mail.isread or 0
    ,drawed    = mail.drawed or 0
    ,timestamp = mail.timestamp or 0
    ,autoget   = mail.autoget or 0
    }
end

local function do_cs_mail_info(roleid)
    local rmails = get_role_mail(roleid)
    local pmails = {}
    for _, mail in ipairs(rmails) do
        table.insert(pmails, p_mail(mail))
    end
    smbb_misc.ex_send(roleid, SC_MAIL_INFO, { mail_list = pmails,unrecv_num = 0 })
end

local function do_persist()
    for roleid, rmails in pairs(add_dict) do
        if rmails then
            smbb_mongo.batch_insert(DATABASE_TABLES.mail_info, rmails)
            --@todo 这里要思考万一写进去了 一半 或者失败，但是如果放在前面又不对
            add_dict[roleid] = nil
        end
    end
    -- 理论上玩家的要删除的邮件一般都是在数据库中，可以不用考虑在add_dict中的情况
    -- 最差情况下在add_dict中的话也是先插入了后删除，不会有太大影响
    if not table.empty(del_dict) then
        smbb_mongo.delete(DATABASE_TABLES.mail_info, { mailid = { ["$in"] = table.keys(del_dict) } })
        del_dict = {}
    end
    if not table.empty(read_dict) then
        smbb_mongo.update(DATABASE_TABLES.mail_info, { mailid = { ["$in"] = table.keys(read_dict) } },
                { ["$set"] = { isread = 1 } })
        read_dict = {}
    end
    if not table.empty(draw_dict) then
        smbb_mongo.update(DATABASE_TABLES.mail_info, { mailid = { ["$in"] = table.keys(draw_dict) } },
                { ["$set"] = { drawed = 1 } })
        draw_dict = {}
    end
end

local function hook_do_persist()
    local next_sec = smbb_util.random(60, 180) * 100
    skynet.timeout(next_sec, function()
        hook_do_persist()
        do_persist()
    end)
end

local function mark_role_offline(roleid)
    if mail_dict[roleid] then
        mail_dict[roleid].offline_sec = smbb_util.nowsec()
    end
end

local function mark_role_online(roleid)
    if mail_dict[roleid] then
        mail_dict[roleid].offline_sec = 0
    end
end

-- 清理不在线的玩家的数据
local function hook_clear_dict()
    local next_sec = smbb_util.random(60, 180) * 100
    skynet.timeout(next_sec, function()
        hook_clear_dict()
        local now = smbb_util.nowsec()
        table.walk(mail_dict, function(mail_info, roleid)
            if mail_info.offline_sec and mail_info.offline_sec > 0 then
                -- 如果玩家已经下线且已经下线超过10分钟就把玩家的邮箱信息离线
                if now - mail_info.offline_sec >= 600 * 100 then
                    mail_dict[roleid] = nil
                end
            end
        end)
    end)
end

local function fix_mails(roleid, mails)
    table.sort(mails, function(A, B)
        return A.mailid > B.mailid
    end)

    if add_dict[roleid] then
        for _, mail in pairs(add_dict[roleid]) do
            table.insert(mails, mail)
        end
    end
    table.filter(mails, function(mail)
        return not del_dict[mail.mailid]
    end)
    table.walk(mails, function(mail)
        if read_dict[mail.mailid] then
            mail.isread = 1
        end
        if draw_dict[mail.mailid] then
            mail.drawed = 1
        end
    end)
end

local response_queue = {}

---find_max_and_unrecvnum
---@param mails mail[]
local function find_max_and_unrecvnum(mails)
    local count, max = 0, 0
    for _, mail in pairs(mails) do
        if (0 == mail.isread) and (0 == mail.drawed) then
            count = count + 1
        end
        if mail.mailid > max then
            max = mail.mailid
        end
    end
    return count, max
end

local client_fun = {}

function client_fun.cs_mail_info(roleid, _)
    do_cs_mail_info(roleid)
end

---@param cs_mail_read cs_mail_read
function client_fun.cs_mail_read(roleid, cs_mail_read)
    local readmails = cs_mail_read.mailid_list
    local rmails = get_role_mail(roleid)
    local readmailids = {}
    local check_fun
    if cs_mail_read.bonekey == 1 then
        check_fun = function()
            return true
        end
    else
        check_fun = function(mail)
            return table.member(readmails, mail.mailid)
        end
    end
    table.walk(rmails, function(mail)
        if check_fun(mail) then
            mail.isread = 1
            read_dict[mail.mailid] = true
            table.insert(readmailids, mail.mailid)
        end
    end)
    if response_queue[roleid] then
        -- 如果订阅了新邮件通知就做ret
        response_queue[roleid](true, find_max_and_unrecvnum(rmails))
    end
    smbb_misc.ex_send(roleid, SC_MAIL_READ, { mailid_list = readmailids })
end

---cs_mail_draw_check
---@param cs_mail_draw cs_mail_draw
local function cs_mail_draw_check(roleid, cs_mail_draw)
    local readmails = cs_mail_draw.mailidlist or {}
    local rmails = get_role_mail(roleid)
    local reward = {}
    local readmailids = {}
    local check_fun
    if cs_mail_draw.bonekey == 1 then
        check_fun = function(mail)
            return mail.drawed == 0
        end
    else
        check_fun = function(mail)
            return table.member(readmails, mail.mailid) and mail.drawed == 0
        end
    end
    table.walk(rmails, function(mail)
        if check_fun(mail) then
            mail.drawed = 1
            draw_dict[mail.mailid] = true
            if mail.isread == 0 then
                mail.isread = 1
                read_dict[mail.mailid] = true
            end
            table.insert(readmailids, mail.mailid)
            reward = reward_lib.merge(reward, mail.reward)
        end
    end)
    if table.empty(readmailids) then
        return error_return(2)
    end
    return success_return(reward, readmailids)
end

local function cs_mail_draw_success(roleid, reward, readmailids)
    local rmails = get_role_mail(roleid)

    if response_queue[roleid] then
        -- 如果订阅了新邮件通知就做ret
        response_queue[roleid](true, find_max_and_unrecvnum(rmails))
    end
    smbb_misc.send_agent(roleid, "role_mail", "draw_mails", reward, readmailids)
end

---cs_mail_draw_error
---@param roleid number
---@param errno number
local function cs_mail_draw_error(roleid, errno)
    smbb_misc.ex_send(roleid, SC_MAIL_DRAW, { result = errno })
end

---@param roleid number
local function cs_mail_draw_exception(roleid)
    smbb_misc.ex_send(roleid, SC_MAIL_DRAW, { result = ERR_CODE.SYS_ERR })
end

---@param  cs_mail_draw  cs_mail_draw
function client_fun.cs_mail_draw(roleid, cs_mail_draw)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle = cs_mail_draw_success
    cs_handle.error_handle = cs_mail_draw_error
    cs_handle.exception_handle = cs_mail_draw_exception
    cs_handle:server_run(cs_mail_draw_check, roleid, cs_mail_draw)
end

function server_func.dispatch_client_msg(protoname, roleid, msg, ...)
    client_fun[protoname](roleid, msg, ...)
end

function server_func.online(roleid)
    if mail_dict[roleid].offline_sec >= 0 then
        mark_role_online(roleid)
        return
    end
    local mails = smbb_mongo.find(DATABASE_TABLES.mail_info, { receiver = roleid })
    fix_mails(roleid, mails)
    local rmail_info = RECORD.mail_info_t()
    rmail_info.roleid = roleid
    rmail_info.mails = mails
    rmail_info.offline_sec = 0
    mail_dict[roleid] = rmail_info
end

-- 获得当前玩家的未领取邮件
function server_func.check_mail(roleid, recv_mid)
    local rmails = get_role_mail(roleid)
    if rmails and #rmails > 0 then
        local unrecv_num, new_recvmid = find_max_and_unrecvnum(rmails)
        if new_recvmid ~= recv_mid then
            skynet.retpack(unrecv_num, new_recvmid)
            return
        else
            response_queue[roleid] = skynet.response()
        end
    else
        response_queue[roleid] = skynet.response()
    end
end

--addlist 必须必须必须保证mailid是从小到大的排列
--如果做不到这里就只能改成先处理邮件增加处理过程中记录需要ret的玩家，然后各自调用
function server_func.add_mail(addlist)
    for _, mail in ipairs(addlist) do
        local cur_roleid = mail.receiver
        local rmails = get_role_mail(cur_roleid)
        table.insert(rmails, 1, mail)
        if not add_dict[cur_roleid] then
            add_dict[cur_roleid] = {}
        end
        table.insert(add_dict[cur_roleid], mail)
        local curmails_count = #rmails
        if curmails_count > max_mail_num then
            local del_mail = table.remove(rmails, 1)
            del_dict[del_mail.mailid] = true
        end
        if response_queue[cur_roleid] then
            -- 如果订阅了新邮件通知就做ret
            response_queue[cur_roleid](true, find_max_and_unrecvnum(rmails))
        end
    end
end

function server_func.offline(roleid)
    mark_role_offline(roleid)
end

local skynet_handle = skynet.handle

skynet_handle.init = function()
    hook_do_persist()
    hook_clear_dict()
end

skynet_handle.on_exit = function()
    do_persist()
    logger.info("mail_service stop")
end

skynet_handle.handle_lua_msg = function(_, source, command, ...)
    local f = server_func[command]
    if f then
        local result = cs(server_func[command], ...)
        if result then
            skynet.retpack(result)
        end
    else
        logger.error("Unknown command : [%s]", command)
        skynet.response()(false)
    end
end

skynet_handle.register = SERVICE.mail_service

skynet_handle.info = function(roleid)
    if roleid then
        roleid = tonumber(roleid)
        return spent(mail_dict[roleid])
    else
        return spent(mail_dict)
    end
end

service.init(skynet_handle)
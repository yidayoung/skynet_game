---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 06. 七月 2018 10:33
---------------------------------------------------------------------
local role_account = {}

local smbb_mongo = smbb_mongo
local role_data = role_data
local smbb_id = smbb_id
local smbb_util = smbb_util
local smbb_misc = smbb_misc
local time_wheel = time_wheel
local string = string
local math = math
local table = table
local skynet = require "smbb_skynet"
local logger = require("lualib.logger")
local ets_lib = require("logic.lib.ets_lib")

local setting = require("config.setting.setting")

local state = role_data.get_state()
-- ccd_spec 因为agent调用了多次role_account，所以定义成全局的确保唯一
local ccd_spec
local TICK_INTERVAL = 5
local HEART_TIMEOUT = 300
local heart = 0
local last_msg_sec = 0
local MSG_TIMEOUT = 7200 ---超过7200s没有除过CS_HEART的消息来就认为是在挂机，T掉当前用户
local _stopReason

local function format_state(cs_account_login, RAccID)
    state.raccid = RAccID
    state.accid = cs_account_login.accid
    state.accname = cs_account_login.accname
    state.srctype = cs_account_login.srctype
    state.mac = cs_account_login.mac
    state.devid = cs_account_login.devid
    state.phone_model = cs_account_login.phone_model
    state.sys_version = cs_account_login.sys_version
    state.subtype = cs_account_login.subtype
    state.ip_info = cs_account_login.ip_info
    state.fc_type = cs_account_login.fc_type
end

local function do_enter_game(role_info)
    state.roleid = role_info.roleid
    state.login_state = true
    role_data.set_role_info(role_info, false)
    --skynet.register("rs"..role_info.roleid)
    local currsec = smbb_util.nowsec()
    require("logic.role.role_sync").online_sync(currsec)
    -- init_base_data
    require("logic.role.role_pereist").hook_pereist()

end

local function check_version(cs_version)
    local version = string.match(cs_version.version, "([^.]*)%.([^.]*)%.([^.]*)")
    local config_version = setting.client_version
    for i, v in ipairs(version) do
        if v < config_version[i] then
            return false
        end
    end
    return true
end

local function offline(reason)
    _stopReason = reason
    skynet.call(state.gate, "lua", "kick", state.fd, reason)
end

local function init_ccd_spec()
    local ArgA = smbb_util.random_one_from_list({ 643, 1297, 2333, 3217, 4057, 5021, 6581, 7741, 8753, 9067 })
    local ArgB = smbb_util.random_one_from_list({ 10627, 11443, 12647, 13159, 14249, 15607, 16661, 17203, 18593, 19387 })
    local ArgM = smbb_util.random_one_from_list({ 20369, 21467, 22741, 23813, 24169, 25621, 26021, 27799, 28393, 29401, 30713, 31237, 32117 })
    local ArgX = math.floor(math.random() * 10000)
    ccd_spec = { ArgA, ArgB, ArgM, ArgX }
    return ArgA, ArgB, ArgM, ArgX
end

local function mix_handshake(ArgA, ArgB, ArgM, ArgX)
    local Mix1, Mix2, Mix3, Mix4, Mix5 = math.floor(math.random() * 10000), math.floor(math.random() * 10000), math.floor(math.random() * 10000), math.floor(math.random() * 10000), math.floor(math.random() * 10000)
    return { mix_1 = { Mix1 }, arg_a = ArgA, mix_2 = { Mix2 }, arg_b = ArgB
    , mix_3        = { Mix3 }, arg_m = ArgM, mix_4 = { Mix4 }, arg_x = ArgX, mix_5 = { Mix5 } }
end

---is_ban
---@param AccIDorRAccID AccID|RAccID
---@return boolean
local function is_ban(AccIDorRAccID)
    return is_number(AccIDorRAccID) and ets_lib.member(SHARE_TABLES.ban_list, AccIDorRAccID)
end

local function do_tick()
    if heart + HEART_TIMEOUT < time_wheel.nowsec() then
        offline("heart timeout")
    else
        local nowsec = time_wheel.init()
        heart = nowsec
        time_wheel.add_plan(nowsec + TICK_INTERVAL, do_tick)
    end
    if last_msg_sec + MSG_TIMEOUT < time_wheel.nowsec() then
        offline("hang on long time")
    end
end

function role_account.stop_reason()
    return _stopReason
end

function role_account.offline(reason)
    offline(reason)
end

function role_account.update_last_msg_sec(sec)
    last_msg_sec = sec
end

function role_account.do_tick(nowsec)
    heart = nowsec
    time_wheel.add_plan(nowsec + TICK_INTERVAL, do_tick)
end

function role_account.next_ccd_spec()
    if not ccd_spec then
        return
    end
    local ArgA, ArgB, ArgM, ArgX = ccd_spec[1], ccd_spec[2], ccd_spec[3], ccd_spec[4]
    local ArgY = (ArgA * ArgX + ArgB) % ArgM
    ccd_spec = { ArgA, ArgB, ArgM, ArgY }
    return ArgY
end

---check_account_login
---@param cs_account_login cs_account_login
local function check_account_login(cs_account_login)
    if state.login_state == true then
        --关闭对应的agent，清除smbb_gate的监控
        --同一客户端的登陆请求 @todo 不同客户端的登陆请求处理
        return error_return(2)
    end
    local ticket = cs_account_login.ticket
    local accid = cs_account_login.accid
    local deadline = cs_account_login.deadline
    local valitT = smbb_util.md5(accid .. deadline .. LOGIN_TICKET)
    if valitT ~= ticket then
        return error_return(2)
    end
    local CurrSec = smbb_util.nowsec()
    if CurrSec > deadline then
        return error_return(3)
    end
    if is_ban(accid) then
        return error_return(4)
    end
    local cur_serverid = cs_account_login.svrid
    if not (cur_serverid == setting.server_id or table.member(setting.merge_server_id_list,
            cs_account_login.svrid)) then
        return error_return(5)
    end
    local RAccID = smbb_id.raccid(accid)
    local RoleInfo = smbb_mongo.findOne(DATABASE_TABLES.role_info, { raccid = RAccID })
    if not is_record(RoleInfo, RECORD.role_info_t) then
        return success_return(cs_account_login, 2, RAccID, RoleInfo)
    end
    return success_return(cs_account_login, 1, RAccID, RoleInfo)
end

---cs_account_login_succes
---@param rstate number
---@param raccid number
---@param roleinfo role_info
---@param cs_account_login cs_account_login
local function cs_account_login_succes(cs_account_login, rstate, raccid, roleinfo)
    logger.debug("do_account_login, RAccID is", raccid)
    format_state(cs_account_login, raccid)
    if rstate == 1 then
        do_enter_game(roleinfo)
    end
    smbb_misc.gw_send(state.fd, SC_ACCOUNT_LOGIN, { result = 1, rstate = rstate })
end

---cs_account_login_err
---@param errno number
local function cs_account_login_err(errno)
    smbb_misc.gw_send(state.fd, SC_ACCOUNT_LOGIN, { result = errno })
end

local function cs_account_login_exception()
    smbb_misc.gw_send(state.fd, SC_ACCOUNT_LOGIN, { result = 0 })
end

---cs_account_login
---@param cs_account_login cs_account_login
function role_account.cs_account_login(cs_account_login)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle = cs_account_login_succes
    cs_handle.error_handle = cs_account_login_err
    cs_handle.exception_handle = cs_account_login_exception
    cs_handle:run(check_account_login, cs_account_login)
end

function role_account.cs_handshake()
    local sc_handshake = mix_handshake(init_ccd_spec())
    smbb_misc.gw_send(state.fd, SC_HANDSHAKE, sc_handshake)
end

---cs_account_create_check
---@param cs_account_create cs_account_create
local function cs_account_create_check(cs_account_create)
    local icon = cs_account_create.icon
    if not icon then
        return error_return(ERR_CODE[SC_ACCOUNT_CREATE].success)
    end
    if not table.member({ 1001, 1002, 1003 }, icon) then
        return error_return(ERR_CODE.SC_CHOICEFIGHT_FIGHT_REQUEST.node_nil)
    end
    local rolename = cs_account_create.rname
    if string.len(rolename) > 7 then
        return error_return(4)
    end
    return success_return(cs_account_create)
end

---cs_account_create_success
---@param cs_account_create cs_account_create
local function cs_account_create_success(cs_account_create)
    local RoleID = smbb_id.gen_roleid()
    local CurrSec = smbb_util.nowsec()
    local role_info = RECORD.role_info_t()

    role_info.roleid = RoleID
    role_info.rolename = cs_account_create.rname
    role_info.accid = state.accid
    role_info.raccid = state.raccid
    role_info.accname = state.accname
    role_info.lastlogin = CurrSec
    role_info.lastlogout = CurrSec
    role_info.ip = state.ip
    role_info.mac = state.mac
    role_info.devid = state.devid
    role_info.phone_model = state.phone_model
    role_info.sys_version = state.sys_version
    role_info.reg_srctype = state.reg_srctype or 0
    role_info.srctype = state.srctype
    role_info.advtype = state.subtype
    role_info.fc_type = state.fc_type
    role_info.regtime = CurrSec
    role_info.regarea = state.ip_info
    role_info.icon = cs_account_create.icon

    role_data.set_role_info(role_info, false)
    role_info._id = RoleID
    logger.debug("creat role role_info is ", role_data.get_role_info())
    if smbb_mongo.insert(DATABASE_TABLES.role_info, role_info) then
        role_info._id = nil
        do_enter_game(role_info)
        smbb_misc.send_client(SC_ACCOUNT_CREATE, { result = 1 })
    else
        skynet.error("creat role insert failed, offline")
        offline("create_account fail")
    end
end

---cs_account_create_error
---@param errno number
local function cs_account_create_error(errno)
    smbb_misc.send_client(SC_ACCOUNT_CREATE, { result = errno })
end

local function cs_account_create_exception()
    smbb_misc.send_client(SC_ACCOUNT_CREATE, { result = 0 })
end

---@param  cs_account_create  cs_account_create
function role_account.cs_account_create(cs_account_create)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle = cs_account_create_success
    cs_handle.success_error = cs_account_create_error
    cs_handle.exception_handle = cs_account_create_exception
    cs_handle:run(cs_account_create_check, cs_account_create)
end

function role_account.cs_heart()
    if is_ban(state.raccid) then
        smbb_misc.gw_send(state.fd, SC_ACCOUNT_KICK, { result = 2 })
        offline("ban")
        return
    end
    local nowsec = smbb_util.nowsec()
    heart = nowsec
    smbb_misc.gw_send(state.fd, SC_HEART, { unixtime = nowsec })
end

function role_account.cs_version(cs_version)
    if check_version(cs_version) then
        smbb_misc.gw_send(state.fd, SC_VERSION, { result = 1 })
    else
        smbb_misc.gw_send(state.fd, SC_VERSION, { result = 2 })
        offline("version_err")
    end
end

return role_account
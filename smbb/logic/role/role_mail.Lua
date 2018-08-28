---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 09. 七月 2018 17:31
---------------------------------------------------------------------
local skynet = require "skynet"
local requester = requester

local role_mail = {}
local MAIL_SERVICE = SERVICE.mail_service

function role_mail.init()
    local mail_info = smbb_mongo.get(DATABASE_TABLES.rmail_info, role_data.get_role_id())
    if mail_info and mail_info._t == "rmail_info" then
        return mail_info
    else
        mail_info = RECORD.rmail_info_t()
        mail_info.roleid = role_data.get_role_id()
        return mail_info
    end
end

function role_mail.online(roleid)
    requester.send(MAIL_SERVICE, "online", roleid)
    role_mail.check_mail()
end

function role_mail.offline(roleid)
    requester.send(MAIL_SERVICE, "offline", roleid)
end

local function update_rmail(unrcvnum, recv_mid)
    local rmail = role_data.get_rmail_info()
    if rmail.recv_mid ~= recv_mid or rmail.unrcvnum ~= unrcvnum then
        rmail.recv_mid = recv_mid
        rmail.unrcvnum = unrcvnum
        --@todo notify client newmail
        print("receive new mail unrcvnum", unrcvnum)
        role_data.set_rmail_info(rmail)
    end
end

function role_mail.check_mail()
    local roleid = role_data.get_role_id()
    skynet.fork(function()
        while (true)
        do
            local recv_mid = role_data.get_rmail_info().recv_mid
            local unrcvnum, newrecv_mid = requester.call(MAIL_SERVICE, "check_mail", roleid, recv_mid)
            update_rmail(unrcvnum, newrecv_mid)
        end
    end)
end

function role_mail.draw_mails(reward, readmailids)
    --spent_print(string.format("roleid:%d draw mail reward:", role_data.get_role_id()), reward)
    local reward_return = reward_lib.reward(reward)
    reward_lib.log(role_data.get_role_id(), reward_return, 1, 0, "")
    reward_lib.notify(reward_return)
    smbb_misc.send_client(SC_MAIL_DRAW,
            { result = 1,mailidlist = readmailids,reward = { reward_lib.p_reward(reward) } })
end

return role_mail
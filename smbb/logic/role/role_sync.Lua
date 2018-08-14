---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 06. 八月 2018 10:46
---------------------------------------------------------------------
local role_data = role_data
local role_lib = require("logic.lib.role_lib")
local role_mail = require("logic.role.role_mail")

local role_sync = {}

function role_sync.online_sync(currsec)
    local role_info = role_data.get_role_info()
    local roleid = role_info.roleid
    role_info.lastlogin = currsec
    role_info.lastlogout = 0
    role_data.set_role_info(role_info)
    role_lib.update_role_public(role_info)
    role_lib.join_online_table(roleid)
    role_mail.online(roleid)
end

function role_sync.interval_sync()

end

function role_sync.offline_sync(currsec)
    local role_info = role_data.get_role_info()
    local roleid = role_info.roleid
    role_info.lastlogout = currsec
    role_data.set_role_info(role_info)
    role_lib.update_role_public(role_info)
    role_lib.leave_online_table(roleid)
    role_mail.offline(roleid)
end

return role_sync
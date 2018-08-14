--
-- Created by IntelliJ IDEA.
-- User: user
-- Date: 2018/7/3
-- Time: 17:08
-- To change this template use File | Settings | File Templates.
--
local role_lib = require "logic.lib.role_lib"

local role_role = {}

-- 这里理论上都走不到，因为role_account在登陆阶段就会完成role_info
function role_role.init()
    return { val = {}, is_dirty = false }
end

function role_role.cs_role_info()
    local role_info = role_data.get_role_info()
    if role_info then
        ---@type p_role_info
        local p_role_info = role_lib.p_role_info(role_info)
        ---@type sc_role_info
        local sc_role_info = { roleinfo = p_role_info }
        smbb_misc.send_client(SC_ROLE_INFO, sc_role_info)
    end
end

return role_role


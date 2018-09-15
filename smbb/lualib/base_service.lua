local skynet = require "smbb_skynet"
local sys = require("lualib.sys")
require("skynet.manager")

local service = {}

---init
---@param mod skynet_handle
function service.init(mod)
    local funcs = mod.command
    if mod.info then
        skynet.info_func(mod.info)
    end
    if mod.on_exit then
        skynet.set_exit_cb(mod.on_exit)
    end

    if mod.bef_on_exit then
        skynet.set_bef_exit_cb(mod.bef_on_exit)
    end

    sys.REG(skynet)

    if mod.init then
        skynet.init(mod.init)
    end

    if mod.register then
        skynet.register(mod.register)
    end

    --if mod.supervisor then
    --    skynet.monitor(mod.supervisor, true)
    --end

    local service_name = mod.register or SERVICE_NAME
    skynet.start(function()
        if mod.handle_lua_msg then
            skynet.dispatch("lua", mod.handle_lua_msg)
        else
            skynet.dispatch("lua", function(session, address, cmd, ...)
                local func = assert(funcs[cmd],
                        string.format("%s receive Unknown command : [%s] from [%s]", service_name, tostring(cmd),
                                skynet.address(address)))
                if session > 0 then
                    skynet.retpack(func(...))
                else
                    func(...)
                end
            end)
        end
    end)
end

return service

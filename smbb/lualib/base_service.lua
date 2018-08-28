local skynet = require "smbb_skynet"
local log = require "lualib.logger"
local sys = require("lualib.sys")

local service = {}

function service.init(mod)
    local funcs = mod.command
    if mod.info then
        skynet.info_func(mod.info)
    end
    if mod.on_exit then
        skynet.set_exit_cb(mod.on_exit)
    end

    sys.REG(skynet)

    if mod.init then
        skynet.init(mod.init)
    end

    if mod.register then
        require("skynet.manager")
        skynet.register(mod.register)
    end

    skynet.start(function()
        if mod.handle_lua_msg then
            skynet.dispatch("lua", mod.handle_lua_msg)
        else
            skynet.dispatch("lua", function(_, _, cmd, ...)
                local f = funcs[cmd]
                if f then
                    skynet.ret(skynet.pack(f(...)))
                else
                    log.error("Unknown command : [%s]", cmd)
                    skynet.response()(false)
                end
            end)
        end
    end)
end

return service

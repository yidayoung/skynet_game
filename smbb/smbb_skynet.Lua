---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 24. 七月 2018 11:06
---------------------------------------------------------------------
local skynet = require("skynet")

local _exit_cb
function skynet.set_exit_cb(func)
    _exit_cb = func
end

function skynet.get_exit_cb()
    return _exit_cb
end

skynet.handle = {
    info = nil,
    on_exit = nil,
    init = nil,
    handle_lua_msg = nil,
    register = nil,
}

return skynet
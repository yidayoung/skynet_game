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

local _bef_exit_cb
function skynet.set_bef_exit_cb(func)
    _bef_exit_cb = func
end

function skynet.get_bef_exit_cb()
    return _bef_exit_cb
end

---@class skynet_handle
skynet.handle = {
    --- debug时的info回调 func
    info           = nil,
    --- 退出时的回调函数 func
    on_exit        = nil,
    --- 退出调用执行前会调用的函数，注意千万不要长时间阻塞，一般都是标志位的设定之类
    bef_on_exit    = nil,
    --- start函数执行前的init函数 func
    init           = nil,
    --- 指定的lua消息的dispatch函数 func
    handle_lua_msg = nil,
    --- 如果dispatch函数没有特殊需求，使用commond可实现lua消息的回调即可，和handle_lua_msg冲突，handle_lua_msg优先 table
    commond        = nil,
    --- 可选字段，如果有会注册一个名字到本地
    register       = nil,
}

skynet.PTYPE_SYS = 13
skynet.PTYPE_CS_CLIENT = 14

return skynet
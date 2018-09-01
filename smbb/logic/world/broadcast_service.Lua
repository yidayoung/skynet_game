---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--      广播服务，对在线玩家进行广播消息时，只需要发送给本服务
-- @end
-- Created : 30. 八月 2018 14:52
---------------------------------------------------------------------
local skynet = require "smbb_skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local smbb_misc = require "logic.tool.smbb_misc"
local table = table
local smbb_pb = require "logic.tool.smbb_pb"

local server_func = {}

function server_func.send_all(protodata, protonumber)
    local onlines = smbb_misc.onlines()
    if table.empty(onlines) then
        return
    end
    local package
    if protonumber then
        logger.debug("broadcast msg ", PROTO_MAP[protonumber], spent(protodata))
        package = smbb_pb.encode(protonumber, protodata)
    else
        package = protodata
    end
    table.walk(onlines, function(roleid)
        smbb_misc.ex_send2(roleid, package)
    end)
end

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()

end

-- 服务关闭时的回调函数
skynet_handle.on_exit = function()
    logger.info(SERVICE_NAME .. "stop")
end

--handle_lua_msg和command参数互相冲突，如果有handle_lua_msg则command不会生效
--skynet_handle.handle_lua_msg = function(_, source, command, ...)
--    server_func[command](...)
--end

skynet_handle.command = server_func

skynet_handle.register = SERVICE.broadcast_service

skynet_handle.info = function()
    return
end

service.init(skynet_handle)
---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 09. 八月 2018 10:22
---------------------------------------------------------------------
local skynet = require "smbb_skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local sys = require("lualib.sys")

local server_func = {}

function server_func.start()
    sys.reg_uniqueservice("mail_service")
    sys.reg_uniqueservice("broadcast_service")
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

skynet_handle.register = SERVICE.world_service

skynet_handle.info = function()
    return
end

service.init(skynet_handle)
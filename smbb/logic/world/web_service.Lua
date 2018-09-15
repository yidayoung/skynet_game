---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 27. 七月 2018 20:21
---------------------------------------------------------------------
local skynet = require "skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local socket = require("skynet.socket")
local sys = require("lualib.sys")
local table = table

local agent_pay = {}
local agent_ctrl = {}

local function bind_port(agent, port)
    for i = 1, 2 do
        -- 启动 20 个代理服务用于处理 http 请求
        agent[i] = sys.reg_newservice("web_agent")
    end
    local balance = 1
    -- 监听一个 web 端口
    local id = socket.listen("0.0.0.0", port)
    socket.start(id, function(id, addr)
        -- 当一个 http 请求到达的时候, 把 socket id 分发到事先准备好的代理中去处理。
        --skynet.error(string.format("%s connected, pass it to agent :%08x", addr, agent[balance]))
        skynet.send(agent[balance], "lua", id)
        balance = balance + 1
        if balance > #agent then
            balance = 1
        end
    end)
end

local server_func = {}

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()
    local setting = require("config.setting.setting")
    bind_port(agent_pay, setting.pay_port)
    bind_port(agent_ctrl, setting.ctrl_port)
end

-- 服务关闭时的回调函数
skynet_handle.on_exit = function()
    --@todo kill是不是会破坏或者丢弃处理到一半或者在消息队列中但是还没有处理的消息，如果是需要做正常退出逻辑
    table.walk(agent_pay, function(service)
        skynet.kill(service)
    end)
    table.walk(agent_ctrl, function(service)
        skynet.kill(service)
    end)
    logger.info(SERVICE_NAME .. " stop")
end

--handle_lua_msg和command参数互相冲突，如果有handle_lua_msg则command不会生效
--skynet_handle.handle_lua_msg = function(_, source, command, ...)
--    server_func[command](...)
--end

skynet_handle.command = server_func

skynet_handle.register = SERVICE.web_service

skynet_handle.info = function()
    return
end

service.init(skynet_handle)
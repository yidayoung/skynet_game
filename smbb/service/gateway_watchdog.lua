local skynet = require "smbb_skynet"
local service = require("lualib.smbb_sevice")
local logger = require("lualib.logger")
local sys = require("lualib.sys")
local CMD = {}
local SOCKET = {}
local gate
local agent = {}
local is_open = false
local setting = require("config.setting.setting")

function SOCKET.open(fd, addr)
    if is_open then
        logger.debug("New client from : " .. addr)
        --agent[fd] = skynet.newservice("smbb_agent")
        agent[fd] = sys.reg_newservice("smbb_agent")
        skynet.call(agent[fd], "lua", "start", { gate = gate, client = fd, watchdog = skynet.self(), addr = addr })
        return
    end
    skynet.call(gate, "lua", "kick", fd)
end

local function close_agent(fd)
    local a = agent[fd]
    agent[fd] = nil
    if a then
        skynet.call(gate, "lua", "kick", fd)
        -- disconnect never return
        skynet.send(a, "lua", "disconnect")
    end
end

function SOCKET.close(fd)
    logger.debug("socket close", fd)
    close_agent(fd)
end

function SOCKET.error(fd, msg)
    logger.debug("socket error", fd, msg)
    close_agent(fd)
end

function SOCKET.warning(fd, size)
    -- size K bytes havn't send out in fd
    logger.debug("socket warning", fd, size)
end

-- socket接收到消息但是没有agent处理
function SOCKET.data(fd, msg)
    print("receive no handle msg from fd", fd)
end

function CMD.reset_fd(old_fd, new_fd, old_agent)
    agent[old_fd] = nil
    skynet.call(gate, "lua", "kick", old_fd)
    agent[new_fd] = old_agent
end

function CMD.start()
    local conf = {
        port = setting.game_port,
        maxclient = setting.max_online_num,
        nodelay = true,
    }
    skynet.call(gate, "lua", "open", conf)
    is_open = true
end

function CMD.close(fd)
    close_agent(fd)
end

local skynet_handle = skynet.handle

skynet_handle.init = function()
    gate = skynet.uniqueservice("smbb_gate")
end

skynet_handle.bef_on_exit = function()
    is_open = false
end

skynet_handle.on_exit = function()

    --table.walk(agent, function(_, fd)
    --    close_agent(fd)
    --end)
    ----@todo wait close
    skynet.call(gate, "lua", "close")
    skynet.kill(gate)
end

skynet_handle.handle_lua_msg = function(_, source, cmd, subcmd, ...)
    if cmd == "socket" then
        local f = SOCKET[subcmd]
        f(...)
        -- socket api don't need return
    else
        local f = assert(CMD[cmd])
        skynet.ret(skynet.pack(f(subcmd, ...)))
    end
end

skynet_handle.register = SERVICE.gate_service

service.init(skynet_handle)
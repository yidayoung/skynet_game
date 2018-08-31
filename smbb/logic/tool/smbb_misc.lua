--
-- Created by IntelliJ IDEA.
-- User: user
-- Date: 2018/6/29
-- Time: 15:06
-- To change this template use File | Settings | File Templates.
--

local socket = require "skynet.socket"
local smbb_pb = require "logic.tool.smbb_pb"
local skynet = require "skynet"
local ets_lib = require("logic.lib.ets_lib")
local logger = require("lualib.logger")
local role_data = role_data
--@doc 只要agent的role_data才是有值的可以调用的，也就是其他任何服务都无发调用role_data相关的功能


local smbb_misc = {}

function smbb_misc.send_client(protonumber, protodata)
    local state = role_data.get_state()
    local roleid = role_data.get_role_id()
    logger.debugf("%d send_client %s:%s", roleid, PROTO_MAP[protonumber], spent(protodata))
    socket.write(state.fd, smbb_pb.encode(protonumber, protodata))
end

function smbb_misc.send_client2(package)
    local state = role_data.get_state()
    socket.write(state.fd, package)
end

function smbb_misc.gw_send(fd, protonumber, protodata)
    local roleid = role_data.get_role_id()
    logger.debugf("%d gw_send %s:%s", roleid, PROTO_MAP[protonumber], spent(protodata))
    socket.write(fd, smbb_pb.encode(protonumber, protodata))
end

function smbb_misc.ex_send(roleid, protonumber, protodata)
    local agent = smbb_misc.agent_address(roleid)
    if agent then
        --logger.debugf("%d ex_send %s:%s",roleid,PROTO_MAP[protonumber],spent(protodata))
        skynet.send(agent, "lua", "send_client", protonumber, protodata)
    else
        logger.errorf("ex_send err, roleid:%d,%d:%s", roleid, protonumber, spent(protodata))
    end
end

function smbb_misc.ex_send2(roleid, package)
    local agent = smbb_misc.agent_address(roleid)
    if agent then
        --logger.debugf("%d ex_send %s:%s",roleid,PROTO_MAP[protonumber],spent(protodata))
        skynet.send(agent, "lua", "send_client2", package)
    else
        logger.errorf("ex_send2 err, roleid:%d:%s", roleid, spent(smbb_pb.decode(package, #package)))
    end
end

function smbb_misc.send_agent(roleid, modulename, funcname, ...)
    skynet.send(smbb_misc.agent_address(roleid), "lua", "route", modulename, funcname, ...)
end

function smbb_misc.onlines()
    local online_info = ets_lib.lookup(SHARE_TABLES.role_online)
    if online_info then
        return table.keys(online_info)
    else
        return {}
    end
end

---agent_address
---@param roleid number
---@return number
function smbb_misc.agent_address(roleid)
    return ets_lib.lookup(SHARE_TABLES.role_online, roleid)
end

return smbb_misc
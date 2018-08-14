local skynet = require "smbb_skynet"
local logger = require("lualib.logger")
local cluster = require "skynet.cluster"
--local cluster_monitor = require "cluster_monitor"
local requester = {}

function requester.call(service, cmd, ...)
	return skynet.call(service, "lua", cmd, ...)
end

function requester.send(service, cmd, ...)
	skynet.send(service, "lua", cmd, ...)
end

function requester.rpc_call(node, service, cmd, ...)
    if not node then
        return RPC_ERROR.node_nil
    end

    if not service then
        return RPC_ERROR.service_nil
    end

    --local nodeconf = cluster_monitor.get_cluster_node(node)
    --if not nodeconf then
    --    return RPC_ERROR.node_offline
    --end

    local rets
    local args = {...}
    local ok, msg = xpcall(function()
        rets = table.pack(cluster.call(node, service, cmd, table.unpack(args)))
    end, debug.traceback)
    if not ok then
        logger.fatalf("rpc_call fatal, node[%s] err:%s", tostring(node), msg)
        --assert(false, string.format("rpc_call fatal, node[%s] err:%s", tostring(node), msg))
        return RPC_ERROR.service_stoped
    end

    if rets then
        rets = table.unpack(rets)
    end
    return RPC_ERROR.success, rets
end

function requester.rpc_send(node, service, cmd, ...)
    if not node then
        return RPC_ERROR.node_nil
    end

    if not service then
        return RPC_ERROR.service_nil
    end

    --local nodeconf = cluster_monitor.get_cluster_node(node)
    --if not nodeconf then
    --    return RPC_ERROR.node_offline
    --end

    local args = {...}
    local ok, msg = xpcall(function()
        cluster.send(node, service, cmd, table.unpack(args))
    end, debug.traceback)
    if not ok then
        return RPC_ERROR.service_stoped
    end
    return RPC_ERROR.success
end

return requester
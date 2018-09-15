---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--  跨服时使用的工具库
-- @end
-- Created : 04. 九月 2018 16:59
---------------------------------------------------------------------
local cross_lib = {}
local setting = require("config.setting.setting")
local requester = require "lualib.requester"
local ets_lib = require "logic.lib.ets_lib"

---server_type 返回当前setting中配置的服务器类型
---@return string @"ndinfo_master"|"normal"
function cross_lib.server_type()
    return setting.server_type
end

---is_master_node 返回当前节点是否是跨服主服节点
---@return boolean
function cross_lib.is_master_node()
    return cross_lib.server_type() == SERVER_TYPE_NDINFO_MASTER
end

---master_node 返回跨服主服node的cluster配置
---@return string @ip:port
function cross_lib.master_node()
    return setting.master_node
end

---slave_node_name 返回服务器ID对应的node名，如果不填则返回当前服务node名
---@param server_id number 服务器ID
---@return string @node名
function cross_lib.slave_node_name(server_id)
    local platform = setting.platform
    local _server_id = server_id or setting.server_id
    return platform .. "_" .. _server_id
end

---self_node 返回本服的cluser配置信息
---@return string @ip:port
function cross_lib.self_node()
    return setting.cluster_node
end

---server_list 返回当前服务器所囊括的所有服务器ID
---@return number[]
function cross_lib.server_list()
    local server_list = copy(setting.merge_server_id_list)
    local server_id = setting.server_id
    table.insert(server_list, server_id)
    return server_list
end

---server_id 获得当前服务器的server_id
---@return number
function cross_lib.server_id()
    return setting.server_id
end

---send_master 给主服的某个服务发送一条消息
---@param master_service string @主服本地的服务名
---@param cmd string @执行的函数名
---@return RPC_ERROR.success|RPC_ERROR.service_stoped|RPC_ERROR.service_nil|RPC_ERROR.node_nil
function cross_lib.send_master(master_service, cmd, ...)
    return requester.rpc_send("master", master_service, cmd, ...)
end

---call_master 对主服的某个服务进行同步回调
---@param master_service string @主服本地服务名
---@param cmd string @回调函数名
---@return RPC_ERROR.success, ret|RPC_ERROR.service_stoped|RPC_ERROR.service_nil|RPC_ERROR.node_nil
function cross_lib.call_master(master_service, cmd, ...)
    return requester.rpc_call("master", master_service, cmd, ...)
end

---slave_node 根据传入的服务器ID，返回当前主服中对应的node名，只有从服主动update上来的才会出现，这里不是单纯的拼接，是已知列表的查找
---@param server_id number
---@return string @node名
local function slave_node(server_id)
    return ets_lib.lookup(SHARE_TABLES.ndinfo, server_id)
end

---send_slave 主服发送给从服一条异步消息
---@param server_id number @从服的服务器ID
---@param service string @从服本地的服务名
---@param cmd string @具体的命令
---@return RPC_ERROR.success|RPC_ERROR.service_stoped|RPC_ERROR.service_nil|RPC_ERROR.node_nil
function cross_lib.send_slave(server_id, service, cmd, ...)
    return requester.rpc_send(slave_node(server_id), service, cmd)
end

---call_slave 主服对从服进行一次同步回调
---@param server_id number @从服的服务器ID
---@param service string @从服本地的服务名
---@param cmd string @具体的命令
---@return RPC_ERROR.success, ret|RPC_ERROR.service_stoped|RPC_ERROR.service_nil|RPC_ERROR.node_nil
function cross_lib.call_slave(server_id, service, cmd, ...)
    return requester.rpc_call(slave_node(server_id), service, cmd)
end

---need_connect 返回是否需要维护跨服连接
---@return boolean
function cross_lib.need_connect()
    return setting.is_cross
end

return cross_lib
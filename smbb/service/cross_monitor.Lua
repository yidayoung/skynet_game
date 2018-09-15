---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
-- 对于跨服的从服来说，甚至什么都不用做，master_node做在配置里，只需要定时的做下ping，如果不通的时候errlog下就可以
-- 从服不在允许可以直接从服之间直接交互，所有的交互都必须从主服走
-- 但是主服必须拥有能主动往任意从服发送消息的能力，也就是主服必须知道所有的server对应的node
-- 也就意味这从服必须有node属性，也就是从服其实也有cluster_node存在，从服在启动的时候主动上报自己的server_id范围和当前node
-- 主服将所有从服的信息统一管理后调用 cluseter.reload来管理所有从服的node信息，定时对所有node进行ping，维护nodes有效
-- @end
-- Created : 04. 九月 2018 14:58
---------------------------------------------------------------------
local skynet = require "smbb_skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local cluster = require "skynet.cluster"
local smbb_util = require "logic.tool.smbb_util"
local time_wheel = require("logic.tool.time_wheel")
local cross_lib = require("logic.lib.cross_lib")
local ets_lib = require("logic.lib.ets_lib")
local requester = require("lualib.requester")


local function init_master_node()
    local master_node = cross_lib.self_node()
    cluster.reload({
        master      = master_node,
        __nowaiting = true,
    })
    cluster.open("master")
end

local function init_slave_node()
    local slave_node_name = cross_lib.slave_node_name()
    local slave_node = cross_lib.self_node()
    local master_node = cross_lib.master_node()
    cluster.reload({
        master            = master_node,
        [slave_node_name] = slave_node,
        __nowaiting       = true,
    })
    cluster.open(slave_node_name)
end

local do_connect_master

local function hook_connect_master(CurrSec)
    local next_sec = smbb_util.random(60, 120) + CurrSec
    time_wheel.add_plan(next_sec, do_connect_master, next_sec)
end

local function connect_master()
    local server_list = cross_lib.server_list()
    local ok = requester.rpc_call("master", SERVICE.cross_service, "update",
            cross_lib.slave_node_name(), cross_lib.self_node(), server_list)
    return ok == RPC_ERROR.success
end

do_connect_master = function(CurrSec)
    hook_connect_master(CurrSec)
    if cross_lib.need_connect() then
        return connect_master()
    else
        return true
    end
end

local do_onece_connect_master

local function hook_once_connect_master(CurrSec)
    local next_sec = CurrSec + 1
    time_wheel.add_plan(next_sec, do_onece_connect_master, next_sec)
end

local function exe_once_connect_master(CurrSec)
    if not connect_master() then
        hook_once_connect_master(CurrSec)
    end
end

do_onece_connect_master = function(CurrSec)
    if cross_lib.need_connect() then
        exe_once_connect_master(CurrSec)
    end
end

local function ping_node(node)
    local ok = requester.rpc_call(node, SERVICE.cross_service, "ping")
    return ok == RPC_ERROR.success
end

local do_refresh_nodes
local function hook_refresh_nodes(CurrSec)
    local next_sec = smbb_util.random(60, 120) + CurrSec
    time_wheel.add_plan(next_sec, do_refresh_nodes, next_sec)
end

local function exe_refresh_nodes()
    local pinged = {}
    for server_id, node in pairs(ets_lib.lookup(SHARE_TABLES.ndinfo)) do
        local pong
        if pinged[server_id] ~= nil then
            pong = pinged[server_id]
        else
            pong = ping_node(node)
            pinged[server_id] = pong
        end
        if not pong then
            ets_lib.delete(SHARE_TABLES.ndinfo, server_id)
            cluster.reload({ [node] = false })
        end
    end
end

do_refresh_nodes = function(CurrSec)
    hook_refresh_nodes(CurrSec)
    if cross_lib.need_connect() then
        exe_refresh_nodes()
    end
end

local server_func = {}

function server_func.update(node, address, server_list)
    for _, server_id in ipairs(server_list) do
        ets_lib.insert(SHARE_TABLES.ndinfo, server_id, node)
    end
    cluster.reload({ [node] = address })
end

function server_func.ping()

end

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()
    smbb_util.init_ranom_seed()
    local CurrSec = time_wheel.init()
    if cross_lib.is_master_node() then
        init_master_node()
        hook_refresh_nodes(CurrSec)
    else
        init_slave_node()
        if (not do_connect_master(CurrSec)) then
            hook_once_connect_master(CurrSec)
        end
    end
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

skynet_handle.register = SERVICE.cross_service

skynet_handle.info = function()
    return spent(ets_lib.lookup(SHARE_TABLES.ndinfo))
end

service.init(skynet_handle)
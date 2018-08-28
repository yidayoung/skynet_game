---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 27. 七月 2018 18:04
---------------------------------------------------------------------
local skynet = require "smbb_skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local smbb_mongo = require "logic.db.smbb_mongo"
--local config_lib = require("logic.lib.config_lib")

local CAPACITY = 10000000000

local serverid
local id_dict = {}
local is_dirty = false

local ID_TYPE_LIST = ID_TYPE_LIST

local server_func = {}

local gen_id = {}

local function update_id(index)
    id_dict[index] = id_dict[index] + 1
    return id_dict[index]
end

function gen_id.gen_roleid()
    return update_id(ID_TYPE_LIST.id_type_role)
end

function gen_id.gen_mailid()
    return update_id(ID_TYPE_LIST.id_type_mail)
end

function server_func.gen_id(funcname)
    is_dirty = true
    return gen_id[funcname]()
end

local function do_persist()
    if id_dict and not table.empty(id_dict) and is_dirty then
        -- @todo 是否成功监控
        smbb_mongo.set("etc", 1, id_dict)
        is_dirty = false
    end
end

local function hook_do_persist()
    skynet.timeout(60 * 100, function()
        hook_do_persist()
        do_persist()
    end)
end

local function base_id_value()
    return ((1 + serverid) * CAPACITY)
end

local function ensure_id_list(id_list)
    for _, key_str in pairs(ID_TYPE_LIST) do
        if not id_list[key_str] then
            id_list[key_str] = base_id_value()
        end
    end
end

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()
    local setting = require("config.setting.setting")
    serverid = setting.server_id
    id_dict = smbb_mongo.get("etc", 1) or {}
    ensure_id_list(id_dict)
    hook_do_persist()
end

-- 服务关闭时的回调函数
skynet_handle.on_exit = function()
    do_persist()
    logger.info(SERVICE_NAME .. (" stop"))
end

--handle_lua_msg和command参数互相冲突，如果有handle_lua_msg则command不会生效
--skynet_handle.handle_lua_msg = function(_, source, command, ...)
--    server_func[command](...)
--end

skynet_handle.command = server_func

skynet_handle.register = SERVICE.id_service

skynet_handle.info = function()
    return id_dict
end

service.init(skynet_handle)
---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 27. 七月 2018 17:59
---------------------------------------------------------------------
local skynet = require "skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local mongo = require "skynet.db.mongo"
local sys = require "lualib.sys"
local setting = require("config.setting.setting")

local db

local server_func = {}

local function connect(conf)
    local data_base = conf.database
    db = mongo.client(conf)[data_base]
end

function server_func.start()
    connect(setting.mongo_database)
    sys.reg_uniqueservice("id_service")
end

function server_func.findOne(collection, ...)
    local ret = db[collection]:findOne(...)
    return ret
end

function server_func.find(collection, ...)
    local ret = db[collection]:find(...)
    local result = {}
    if ret:hasNext() then
        for index = 1, ret:count() do
            result[index] = ret:next()
        end
    end
    return result
end

function server_func.insert(collection, document)
    --    return db[collection]:safe_insert(document)
    local result, err = db[collection]:safe_insert(document)
    if not result then
        logger.error("insert err , err:", err)
    end
    return result
end

function server_func.batch_insert(collection, document)
    --    return db[collection]:safe_insert(document)
    db[collection]:batch_insert(document)
end

function server_func.update(collection, selector, update)
    return db[collection]:update(selector, update, true, false)
end

function server_func.delete(collection, selector, single)
    return db[collection]:safe_delete(selector, single)
end

function server_func.get(collection, id)
    return server_func.findOne(collection, { _id = id })
end

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()
end

-- 服务关闭时的回调函数
skynet_handle.on_exit = function()
    logger.info(SERVICE_NAME .. " stop")
end

--handle_lua_msg和command参数互相冲突，如果有handle_lua_msg则command不会生效
--skynet_handle.handle_lua_msg = function(_, source, command, ...)
--    server_func[command](...)
--end

skynet_handle.command = server_func

skynet_handle.register = SERVICE.db_service

skynet_handle.info = function()
    return
end

service.init(skynet_handle)
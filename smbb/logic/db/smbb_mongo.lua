--
-- Created by IntelliJ IDEA.
-- User: user
-- Date: 2018/6/29
-- Time: 16:09
-- To change this template use File | Settings | File Templates.
--
local skynet = require "skynet"
local smbb_mongo = {}


--@todo get出来的数据是否ok的判断处理
local function format_result(result)
    if result and not table.empty(result) then
        result._id = nil
    end
end

function smbb_mongo.findOne(collection, query, selector)
    local result = skynet.call(SERVICE.db_service, "lua", "findOne", collection, query, selector)
    format_result(result)
    return result
end

function smbb_mongo.find(collection, query, selector)
    local result = skynet.call(SERVICE.db_service, "lua", "find", collection, query, selector)
    table.walk(result, format_result)
    return result
end

function smbb_mongo.insert(...)
    return skynet.call(SERVICE.db_service, "lua", "insert", ...)
end

function smbb_mongo.batch_insert(...)
    return skynet.call(SERVICE.db_service, "lua", "batch_insert", ...)
end

function smbb_mongo.update(...)
    return skynet.call(SERVICE.db_service, "lua", "update", ...)
end

function smbb_mongo.delete(...)
    return skynet.call(SERVICE.db_service, "lua", "delete", ...)
end

function smbb_mongo.get(collection, key)
    return smbb_mongo.findOne(collection, { _id = key })
end

function smbb_mongo.set(collection, key, document)
    document._id = key
    smbb_mongo.update(collection, { _id = key }, document)
end

return smbb_mongo
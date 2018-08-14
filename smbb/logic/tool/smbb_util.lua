--
-- Created by IntelliJ IDEA.
-- User: user
-- Date: 2018/7/4
-- Time: 9:53
-- To change this template use File | Settings | File Templates.
--

local zlib = require("zlib")
local skynet = require("smbb_skynet")
local md5 = require "md5"

local smbb_util = {}

local ToStringEx, TableToStr

ToStringEx = function(value)
    if type(value) == 'table' then
        return TableToStr(value)
    elseif type(value) == 'string' then
        return "\'" .. value .. "\'"
    else
        return tostring(value)
    end
end

TableToStr = function(t)
    if t == nil then
        return ""
    end
    local retstr = "{"

    local i = 1
    for key, value in pairs(t) do
        local signal = ","
        if i == 1 then
            signal = ""
        end

        if key == i then
            retstr = retstr .. signal .. ToStringEx(value)
        else
            if type(key) == 'number' or type(key) == 'string' then
                retstr = retstr .. signal .. '[' .. ToStringEx(key) .. "]=" .. ToStringEx(value)
            else
                if type(key) == 'userdata' then
                    retstr = retstr .. signal .. "*s" .. TableToStr(getmetatable(key)) .. "*e" .. "=" .. ToStringEx(value)
                else
                    retstr = retstr .. signal .. key .. "=" .. ToStringEx(value)
                end
            end
        end

        i = i + 1
    end

    retstr = retstr .. "}"
    return retstr
end

smbb_util.table_to_string = TableToStr

function smbb_util.string_to_table(string)
    return load("return " .. string)()
end

function smbb_util.nowsec()
    return toint(skynet.time())
end

function smbb_util.init_ranom_seed()
    math.randomseed(tostring(os.time()):reverse():sub(1, 7))
end

function smbb_util.random_one_from_list(tbl)
    return tbl[math.random(1, #tbl)]
end

function smbb_util.random(min, max)
    assert(min < max)
    return math.random(min, max)
end

function smbb_util.clone(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local newObject = {}
        lookup_table[object] = newObject
        for key, value in pairs(object) do
            newObject[_copy(key)] = _copy(value)
        end
        return setmetatable(newObject, getmetatable(object))
    end
    return _copy(object)
end

local function compress(data)
    return zlib.deflate()(data, "finish")
end

function smbb_util.compress(data)
    if (type(data) == 'table') then
        return compress(TableToStr(data))
    else
        return compress(data)
    end
end

function smbb_util.uncompress(data)
    return zlib.inflate()(data, "finish")
end

function smbb_util.uncompress_retrun_table(data)
    return load("return " .. smbb_util.uncompress(data))()
end

function smbb_util.md5(str)
    return md5.sumhexa(str)
end

function is_record(tab, record)
    if type(tab) == "table" and tab._t then
        local record_tab
        if type(record) == "function" then
            record_tab = record()
        else
            record_tab = record
        end
        return tab._t == record_tab._t
    end
    return false
end

return smbb_util


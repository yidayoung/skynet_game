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
local math = math
local os = os

local ONE_DAY_SEC = 86400

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

---@class time
---@field year number
---@field month number
---@field day number
---@field hour number
---@field min number
---@field sec number
---@field wday number
---@field yday number
---@field isdst boolean

---unixtime_to_datetime 时间戳转换成一个time table
---@param unixtime number
---@return time
function smbb_util.unixtime_to_datetime(unixtime)
    local time_tbl = os.date("*t", unixtime)
    return time_tbl
end

function smbb_util.datetime_to_unixtime(time)
    assert(#time == 2, "wrong time")
    local date, daytime = time[1], time[2]
    assert(#date == 3 and #daytime == 3, "wrong date")
    return os.time({ year = date[1], month = date[2], day = date[3], hour = daytime[1], min = daytime[2], sec = daytime[3] })
end

---config_time_to_sec
---@param config_time {hour:number,min:number,sec:number}
---@return number
function smbb_util.time_to_sec(config_time)
    assert(#config_time == 3)
    return config_time[1] * 3600 + config_time[2] * 600 + config_time[3]
end

---is_same_day 根据配置时间，返回两个时间点是否是同一天
---@param refsec number @上次刷新时间
---@param cursec number @现在的时间
---@param config_time table @配置的刷新时间
---@return boolean @是否是同一天
function smbb_util.is_same_day(refsec, cursec, config_time)
    local reftime, curtime
    if config_time then
        local config_sec = smbb_util.time_to_sec(config_time)
        reftime = smbb_util.unixtime_to_datetime(refsec - config_sec)
        curtime = smbb_util.unixtime_to_datetime(cursec - config_sec)
    else
        reftime = smbb_util.unixtime_to_datetime(refsec)
        curtime = smbb_util.unixtime_to_datetime(cursec)
    end
    return reftime.year == curtime.year and reftime.yday == curtime.yday
end

---week_number 返回当前时间点是那一年的第多少周，每年的第一天如果不是周1会被结算到去年的最后一周
---@param unixtime number
---@return year:number, week:number
function smbb_util.week_number(unixtime)
    local time_tbl = smbb_util.unixtime_to_datetime(unixtime)
    if time_tbl.yday <= time_tbl.wday then
        return smbb_util.week_number(os.time({ year = time_tbl.year - 1, month = 12, day = 31, hour = 0, min = 0, sec = 0 }))
    else
        local last_sunday = time_tbl.yday - time_tbl.wday
        return time_tbl.year, math.round(last_sunday / 7)
    end
end

---is_same_week 两个时间点根据配置的刷新时间判断是否是同一周
---@param refsec number @上次刷新时间
---@param cursec number @当前时间
---@param config_time table{wday:number, {hour:number, min:number, sec:number}} @配置的刷新时间
---@return boolean @根据配置时间是否是同一周
function smbb_util.is_same_week(refsec, cursec, config_time)
    local refyear, refweek, curyear, curweek
    if config_time then
        local config_sec = ONE_DAY_SEC * (config_time[1] - 1) + smbb_util.time_to_sec(config_time[2])
        refyear, refweek = smbb_util.week_number(refsec - config_sec)
        curyear, curweek = smbb_util.week_number(cursec - config_sec)
    else
        refyear, refweek = smbb_util.week_number(refsec)
        curyear, curweek = smbb_util.week_number(cursec)
    end
    return refyear == curyear and refweek == curweek
end

function smbb_util.is_same_month()
    return true
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


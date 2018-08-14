--[[
	@ filename : loggerd.lua
	@ author   : zhangshiqian1214@163.com
	@ modify   : 2017-08-23 17:53
	@ company  : zhangshiqian1214
]]

require "skynet.manager"
local skynet = require "skynet"
local logpath = skynet.getenv("logpath") or "./log"
local command = {}
local file_list = {}
local file_name_list = {}

local log_level_desc = {
    [0] = "NOLOG",
    [10] = "DEBUG",
    [20] = "INFO",
    [30] = "WARNING",
    [40] = "ERROR",
    [50] = "CRITICAL",
    [60] = "FATAL",
}

local log_level_color = {
    [0] = "#ADB29C",
    [10] = "#00FFD2",
    [20] = "#00FF00",
    [30] = "#FFCC33",
    [40] = "#FF0000",
    [50] = "#543AB2",
    [60] = "#BB182C",
}

local function ensure_log_file(name)
    if file_list[name] then
        file_list[name]:close()
    end
    local time_str = os.date("%Y_%m_%d", os.time())
    local logfile = string.format("error_log_%s.html", time_str)
    logfile = logpath .. "/" .. logfile
    local file = assert(io.open(logfile, "a"), "log file open failed")
    file_list[name] = file
    file_name_list[name] = logfile
    return file
end

local function trunk_at_next_day()
    local name = "default"
    if file_list[name] then
        file_list[name]:close()
        file_list[name] = nil
        file_name_list[name] = nil
    end
    local tbl = os.date("*t")
    local now = os.time()
    local outtime = os.time({ day = tbl.day, month = tbl.month, year = tbl.year, hour = 0, minute = 0, second = 0 }) + 3600 * 24
    skynet.timeout((outtime - now) * 100, trunk_at_next_day)
end

local function init()
    os.execute("mkdir -p " .. logpath)
    trunk_at_next_day()
end

local function write_head(file)
    local head = string.format("<BODY bgcolor=\"#000000\">\n<pre>\n<font color=\"#00FF00\">\n<style type=\"text/css\">\n    div {text-align:left;margin-left:4px;word-wrap:break-word;}\n</style>\n<CENTER><meta http-equiv=\"Content-Type\"\ncontent=\"text/html;charset=utf-8\" /> <TITLE>Log</TITLE> <H3><font color=\"#FFFF97\">Log for %s</font><br><br></CENTER>\n<hr>", os.date("%Y%m%d", os.time()))
    file:write(head)
end

local function ensure_head(file)
    if not file:seek("end", -1) then
        write_head(file)
    end
    file:seek("end")
end

-- 确保当前文件名的文件还存在
local function log_file_exist(logfilepath)
    local logfile = io.open(logfilepath, "r")
    if logfile then
        logfile:close()
        return true
    end
    return false
end

local function dumplog(name, color_format, text)
    local file = file_list[name]
    local logfile = file_name_list[name]
    if not file or (not log_file_exist(logfile)) then
        file = ensure_log_file(name)
    end
    ensure_head(file)
    file:write(color_format)
    file:write(text .. "\n" .. "</FONT></div>")
    file:flush()
end

local function log_format(object)
    if object.tags and next(object.tags) then
        return string.format("[%s %s] [%s] [%s]%s %s", object.timestamp, object.level, object.modname, table.concat(object.tags, ","), object.src, object.msg)
    else
        return string.format("[%s %s] [%s] %s %s", object.timestamp, object.level, object.modname, object.src, object.msg)
    end
end

local function color_format(level)
    return string.format("<div><font size=\"2\" color=\"%s\">\n", log_level_color[level])
end

function command.log(name, modname, level, timestamp, msg, src, tags)
    dumplog("default", color_format(level), log_format {
        name = name,
        modname = modname,
        level = log_level_desc[level],
        timestamp = timestamp,
        msg = msg,
        src = src or '',
        tags = tags,
    })
end

function command.new_log(name, filename)
    local file = assert(io.open(logpath .. "/" .. filename, "a"), "log file open failed")
    file_list[name] = file
end

local function dispatch(session, address, cmd, ...)
    local func = assert(command[cmd], string.format("command[%s] is nil", tostring(cmd)))
    if session > 0 then
        skynet.retpack(func(...))
    else
        func(...)
    end
end

skynet.start(function()
    skynet.dispatch("lua", dispatch)
end)

skynet.init(init)
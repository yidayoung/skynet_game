---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 26. 七月 2018 20:13
---------------------------------------------------------------------
local table = table
local print = print
local assert = assert
local coroutine = coroutine
local string = string
local monitor

local M = {}
local Skynet

local service_list = {}

local function do_exit(service)
    Skynet.send(service, "sys", "EXIT")
end

local function do_watch(service)
    assert(Skynet.call(monitor, "lua", "WATCH", service))
    service_list[service] = service
end

function M.reg_uniqueservice(service, ...)
    local s = Skynet.uniqueservice(service, ...)
    assert(s, "reg_uniqueservice failed")
    do_watch(s)
    return s
end

function M.reg_newservice(service, ...)
    local s = Skynet.newservice(service, ...)
    assert(s, "reg_newservice failed")
    do_watch(s)
    return s
end

local max_wait_sec = 3000 --@todo add set func
local die_co

local function wait_service_list_exit()
    if table.empty(service_list) then
        return true
    end
    assert(die_co == nil)
    die_co = coroutine.running()
    Skynet.sleep(max_wait_sec)
    if table.empty(service_list) then
        return true
    end
    return false
end

local command = {}

local _is_exit = false

function command.EXIT()
    print("do stop service " .. SERVICE_NAME)
    assert(not _is_exit, "exiting already!, you shouldn't see this msg, your on_exit func may block?")
    _is_exit = true

    local bef_cb = Skynet.get_bef_exit_cb()
    if bef_cb then
        bef_cb()
    end

    if not table.empty(service_list) then
        table.walk(service_list, function(service)
            do_exit(service)
        end)
    end
    if (not wait_service_list_exit()) then
        print(string.format("%s stop failed foce close", SERVICE_NAME))
        table.walk(service_list, function(service)
            Skynet.kill(service)
        end)
    end
    local cb = Skynet.get_exit_cb()
    if cb then
        cb()
    end
    print("do stop service " .. SERVICE_NAME .. " done!")
    Skynet.retpack(true)
    Skynet.exit()
end

function command.DIE(address)
    assert(_is_exit, "unexcept service exit")
    assert(service_list[address], "child not init?!")
    service_list[address] = nil
    if table.empty(service_list) and die_co then
        Skynet.wakeup(die_co)
    end
end

function M.REG(_Skynet)
    Skynet = _Skynet
    assert(Skynet.PTYPE_SYS, "Skynet.PTYPE_SYS is nil")
    Skynet.register_protocol {
        name     = "sys",
        id       = Skynet.PTYPE_SYS,
        pack     = function(...)
            return ...
        end,
        unpack   = Skynet.tostring,
        dispatch = function(session, source, cmd, ...)
            local f = assert(command[cmd], cmd)
            f(source, ...)
        end,
    }
    Skynet.init(function()
        monitor = Skynet.uniqueservice(true, "simplemonitor")
    end)

end

function M.EXIT(service)
    Skynet.call(service, "sys", "EXIT")
end

--function M.watch(service)
--    do_watch(service)
--end

return M
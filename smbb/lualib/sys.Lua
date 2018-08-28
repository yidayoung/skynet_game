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

local M = {}
local Skynet

local service_list = {}

function M.reg_uniqueservice(service)
    local s = Skynet.uniqueservice(service)
    table.insert(service_list, 1, s)
    return s
end

function M.reg_newservice(service)
    local s = Skynet.newservice(service)
    table.insert(service_list, 1, s)
    return s
end

local command = {}

function command.EXIT()
    print("do stop service " .. SERVICE_NAME)
    if not table.empty(service_list) then
        table.walk(service_list, function(service)
            M.EXIT(service)
        end)
    end
    local cb = Skynet.get_exit_cb()
    if cb then
        cb()
    end
    Skynet.retpack(true)
    print("do stop service " .. SERVICE_NAME .. " done!")
    Skynet.exit()
end

function M.REG(_Skynet)
    Skynet = _Skynet
    Skynet.register_protocol {
        name = "sys",
        id = 13,
        unpack = Skynet.unpack,
        pack = Skynet.pack,
        dispatch = function(session, source, cmd, ...)
            local f = assert(command[cmd], cmd)
            f(...)
        end,
    }
end

function M.EXIT(service)
    Skynet.sleep(300)
    Skynet.call(service, "sys", "EXIT")
end

return M
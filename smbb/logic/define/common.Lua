---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 02. 八月 2018 14:35
---------------------------------------------------------------------

local function error_handle()
    pcall(require("lualib.logger").error, debug.traceback())
end

function CATCH(func, ...)
    return xpcall(func, error_handle, ...)
end

function LCATCH(func, ...)
    return pcall(func, ...)
end


local function table2args(tbl)
    if tbl then
        return table.unpack(tbl)
    end
end

---run_func
---@param handle cs_handle
---@param check_fun function
local function run_func (handle, check_fun, ...)
    assertex(type(check_fun) == "function", "check_fun error")
    local state, check_state, return_ = CATCH(check_fun, ...)
    if state then
        if check_state then
            handle.success_handle(table2args(return_))
        else
            handle.error_handle(table2args(return_))
        end
    else
        handle.exception_handle(table2args(return_))
    end
end

local function server_fun_func(handle, check_fun, roleid, ...)
    assertex(type(check_fun) == "function", "check_fun error")
    local state, check_state, return_ = CATCH(check_fun, roleid, ...)
    if state then
        if check_state then
            handle.success_handle(roleid, table2args(return_))
        else
            handle.error_handle(roleid, table2args(return_))
        end
    else
        handle.exception_handle(roleid, table2args(return_))
    end
end

---@class cs_handle
---@field success_handle function @ 成功回调
---@field error_handle function @ 失败回调
local handle = {
    success_handle = nil,
    error_handle = nil,
    exception_handle = nil,
    run = run_func,
    server_run = server_fun_func,
}

CS_HANDLE = function()
    ---@type cs_handle
    local chandle = copy(handle)
    return chandle
end

function error_return(...)
    return false, table.pack(...)
end

function success_return(...)
    return true, table.pack(...)
end

function assertex(v, message)
    if not v then
        --这里有点危险，使用的时候loggerd必须在不然就gg
        if message then
            pcall(require("lualib.logger").error, message)
            error(message)
        end
        pcall(require("lualib.logger").error, debug.traceback())
    end
end

LOGIN_TICKET = "f4308922987464dbacc42558f8221696"


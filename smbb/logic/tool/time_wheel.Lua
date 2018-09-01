---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--     基于skynet.timeout完成的时间轮
-- @end
-- Created : 01. 九月 2018 15:04
---------------------------------------------------------------------

--- 使用时必须显示主动的调用time_wheel.init()才能启动时间轮，
--- 使用time_whell.add_plan添加任务具体参数参看函数doc
--- time_wheel.cancel_plan可以取消已经添加的任务，前提是将已经创建的任务进行保存
--- time_wheel.plans 可以返回当前service的所有任务，注意只能用来调试，
--- time_wheel的所有操作应该用提供的函数操作，而不是直接操作源数据
--- time_wheel.nowsec 可以返回当前时间，如果当前服务初始化了时间轮，推荐使用time_wheel.nowsec而不是smbb_util.nowsec，
--- 虽然time_whell.nowsec可能会不准，但是如果后续调用依赖时间轮，则这个不准确是必需有的，且必须保持一致

local skynet = require "smbb_skynet"
local smbb_util = require "logic.tool.smbb_util"
local table = table
local assert = assert
local type = type
local setmetatable = setmetatable
local rawset = rawset
local rawget = rawget

local timer_wheel_nowsec = 0
local timer_wheel_plans = {}

---@class plan
local _plan = {
    ---具体调用方法
    func   = nil,
    ---方法对应的参数，使用table.pack打包成table保存的结果
    args   = {},
    ---是否取消调用，默认false，配合cancel使用
    cancel = false
}

setmetatable(timer_wheel_plans,
        { __index = function(t, k)
            rawset(t, k, {})
            return rawget(t, k)
        end })

local time_wheel = {}

local function clear_plans(tarsec)
    local plans = timer_wheel_plans[tarsec]
    timer_wheel_plans[tarsec] = nil
    table.filter(plans, function(plan)
        return not plan.cancel
    end)
    return plans
end

local function work3(plan)
    CATCH(plan.func, table.unpack(plan.args))
end

local function work2(tarsec)
    local plans = clear_plans(tarsec)
    table.walk(plans, function(plan)
        work3(plan)
    end)
end

local function work(prev_sec, curr_sec)
    if prev_sec >= curr_sec then
        return
    end
    local tarsec = prev_sec + 1
    timer_wheel_nowsec = tarsec
    work2(tarsec)
    work(tarsec, curr_sec)
end

local tick
local function work_func(prev_sec)
    local curr_sec = smbb_util.nowsec()
    work(prev_sec, curr_sec)
    tick(curr_sec)
    return curr_sec
end

tick = function(curr_sec)
    local function _work_func()
        work_func(curr_sec)
    end
    skynet.timeout(100, _work_func)
end

---init 初始化时间轮，所有调用时间轮的逻辑中都必须显式的调用该方法才能后续使用时间轮逻辑
---@return number ---时间轮系统中的当前时间
function time_wheel.init()
    local curr_sec = smbb_util.nowsec()
    timer_wheel_nowsec = curr_sec
    tick(curr_sec)
    return curr_sec
end

---add_plan
---@param tarsec number ---目标时间
---@param func function ---执行的函数
---@return plan 生成后的事务
function time_wheel.add_plan(tarsec, func, ...)
    assert(type(func) == "function")
    ---@type plan
    local plan = {func = func, args = table.pack(...)}
    table.insert(timer_wheel_plans[tarsec], plan)
    return plan
end

---cancel_plan 取消指定任务的执行
---@param plan plan 要取消的具体事务，来源只能是time_wheel.add_plan的返回值
function time_wheel.cancel_plan(plan)
    plan.cancel = true
end

---nowsec 返回当前时间
function time_wheel.nowsec()
    return timer_wheel_nowsec
end

---plans 返回当前服务的所有已经创建还未实施的任务
---@return plan[]
function time_wheel.plans()
    return timer_wheel_plans
end

return time_wheel
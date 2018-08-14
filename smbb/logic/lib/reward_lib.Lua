---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 09. 七月 2018 16:56
---------------------------------------------------------------------
local money_lib = require "logic.lib.money_lib"

local reward_lib = {}

local function filter_special_reward(reward)
    return reward
end

---p_reward
---@param reward reward
---@return p_reward
function reward_lib.p_reward(reward)
    local p_reward = {}
    for _, v in pairs(reward) do
        --spent_print("reward is ", v)
        --local typeid, num = v.typeid,v.num
        local typeid, num = v[1], v[2]
        table.insert(p_reward, { typeid = typeid, number = num })
    end
    return { moneylist = p_reward }
end

---normal
---@param reward reward
---@return reward
function reward_lib.normal(reward)
    local reward_tmp = {}
    for _, r in ipairs(reward) do
        local hasnum = reward_tmp[r[1]] or 0
        reward_tmp[r[1]] = r[2] + hasnum
    end
    reward = {}
    for money_type, money_num in pairs(reward_tmp) do
        table.insert(reward, { money_type, money_num })
    end
    return reward
end

---merge 将多项奖励进行合并
---@param reward1 reward
---@param reward2 reward
---@param ... reward[]
---@return reward
function reward_lib.merge(reward1, reward2, ...)
    if reward2 == nil then
        return reward_lib.normal(reward1)
    end
    --reward_lib.normal(table.merge2(reward1, reward2))
    local reward = table.merge2(reward1, reward2)
    return reward_lib.merge(reward, ...)
end

---reward 由role_server调用的奖励函数
---@param reward reward
---@return table @{add_moneylist_return = table}
function reward_lib.reward(reward)
    filter_special_reward(reward_lib.normal(reward))
    local AddMoneyListReturn = money_lib.add_moneylist(reward)
    return { add_moneylist_return = AddMoneyListReturn }
end

---log 奖励log记录函数
---@param roleid number
---@param reward_return table
---@param reason number
---@param argid number
---@param desc string
function reward_lib.log(roleid, reward_return, reason, argid, desc)
    local addmoneylistreturn = reward_return.add_moneylist_return
    --money_lib.money_add_log(roleid, addmoneylistreturn, reason, argid, desc)
end

function reward_lib.notify(reward_return)
    local addmoneylistreturn = reward_return.add_moneylist_return
    money_lib.money_notify(addmoneylistreturn)
end

return reward_lib
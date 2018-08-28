---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 05. 七月 2018 19:18
---------------------------------------------------------------------
local role_data = require("logic.role.role_data")

local data_money = require("config.data_money")
local pairs = pairs
local ipairs = ipairs
local table = table
local smbb_misc = smbb_misc
local math = math
local assert = assert

local money_lib = {}

local function money_notify_split(old_money_list, new_money_list)
    local newlist, updatelist, deletelist = {}, {}, {}
    for typeid, num in pairs(new_money_list) do
        local old_num = old_money_list[typeid]
        if is_number(old_num) then
            if old_num ~= num then
                updatelist[typeid] = num
            end
        else
            newlist[typeid] = num
        end
    end
    table.walk(old_money_list, function(num, typeid)
        if not is_number(new_money_list[typeid]) then
            deletelist[typeid] = num
        end
    end)
    return newlist, updatelist, deletelist
end

---merge_paidgold_and_freegold 将充值钻石合并到免费钻石
---@param money_list table<typeid, number>[]
function money_lib.merge_paidgold_and_freegold(money_list)
    local cmoney_list = copy(money_list)
    if cmoney_list[MONEY_TYPEID_FREEGOLD] and cmoney_list[MONEY_TYPEID_PAIDGOLD] then
        cmoney_list[MONEY_TYPEID_FREEGOLD] = cmoney_list[MONEY_TYPEID_FREEGOLD] + cmoney_list[MONEY_TYPEID_PAIDGOLD]
    end
    return cmoney_list
end

---money_to_p_money
---@param money_type number
---@param number number
---@return p_money
function money_lib.money_to_p_money(money_type, number)
    return { typeid = money_type, number = number }
end

---money_list_to_p_money_list
---@param money_list table<typeid, mumber>
---@return p_money[]
function money_lib.money_list_to_p_money_list(money_list)
    local p_money_list = {}
    for money_type, number in pairs(money_list) do
        table.insert(p_money_list, money_lib.money_to_p_money(money_type, number))
    end
    return p_money_list
end

---@return table<typeid, number>[]
function money_lib.get_money_list()
    return role_data.get_money_info().moneylist
end

---add_moneylist
---@param reward reward
---@param old_money_list table<typeid, number>[]
---@return table<prev_money_list, new_money_list>
function money_lib.add_moneylist(reward, old_money_list)
    local moneylist
    if not old_money_list then
        moneylist = role_data.get_money_list()
    else
        moneylist = copy(old_money_list)
    end
    local prev_money_list = copy(moneylist)
    local dirty = false
    for _, r in ipairs(reward) do
        local typeid, number = r[1], r[2]
        assert(data_money[typeid], "add_unkonw money " .. typeid)
        local limit = data_money[typeid].limit or 0
        local old_num = moneylist[typeid] or 0
        local new_num = math.min(old_num + number, limit)
        if new_num ~= old_num then
            moneylist[typeid] = new_num
            dirty = true
        end
    end
    if dirty and not old_money_list then
        role_data.set_money_list(moneylist)
    end
    return { prev_money_list, moneylist }
end

---dec_moneylist
---@param dec_moneylist reward
---@param old_money_list table<typeid, number>[]
---@return table<prev_money_list, new_money_list>
function money_lib.dec_moneylist(dec_moneylist, old_money_list)
    local money_list
    if not old_money_list then
        money_list = role_data.get_money_list()
    else
        money_list = copy(old_money_list)
    end
    local prev_money_list = copy(money_list)
    local dirty = false
    for _, r in ipairs(dec_moneylist) do
        local typeid, number = r[1], r[2]
        if number > 0 then
            local old_num = money_list[typeid] or 0
            if typeid == MONEY_TYPEID_FREEGOLD then
                -- 扣除钻石的时候付费钻石也可以顶
                if old_num >= number then
                    money_list[typeid] = old_num - number
                else
                    local extra_need_num = number - old_num
                    local pay_gold_num = money_list[MONEY_TYPEID_PAIDGOLD] or 0
                    assert(pay_gold_num >= extra_need_num, "not enough money need:%d, have:%d", extra_need_num,
                            pay_gold_num)
                    money_list[MONEY_TYPEID_PAIDGOLD] = pay_gold_num - extra_need_num
                end
            else
                assert(old_num >= number, "not enough money need:%d, have:%d", old_num, number)
                local new_num = math.max(0, old_num - number)
                money_list[typeid] = new_num
            end
            dirty = true
        end
    end
    if dirty and not old_money_list then
        role_data.set_money_list(money_list)
    end
    return { prev_money_list, money_list }
end

---money_notify
---@param change_money_list_return table<prev_money_list, cur_money_list>
function money_lib.money_notify(change_money_list_return)
    local old_money_list, new_money_list = change_money_list_return[1], change_money_list_return[2]
    old_money_list = money_lib.merge_paidgold_and_freegold(old_money_list)
    new_money_list = money_lib.merge_paidgold_and_freegold(new_money_list)
    local newlist, updatelist, deletelist = money_notify_split(old_money_list, new_money_list)

    if not (table.empty(newlist) and table.empty(updatelist) and table.empty(deletelist)) then
        newlist = money_lib.money_list_to_p_money_list(newlist)
        updatelist = money_lib.money_list_to_p_money_list(updatelist)
        deletelist = money_lib.money_list_to_p_money_list(deletelist)
        smbb_misc.send_client(SC_MONEY_NOTIFY, { newlist = newlist, updatelist = updatelist, deletelist = deletelist })
    end
end

function money_lib.check_money_list(need_list, old_money_list)
    local money_list
    if old_money_list then
        money_list = copy(money_list)
    else
        money_list = money_lib.get_money_list()
    end
    money_list = money_lib.merge_paidgold_and_freegold(money_lib)
    for _, r in ipairs(need_list) do
        local typeid, number = r[1], r[2]
        if money_list[typeid] < number then
            return false
        end
        money_list[typeid] = money_list[typeid] - number
    end
    return true
end

return money_lib

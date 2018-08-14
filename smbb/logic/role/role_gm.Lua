---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 03. 八月 2018 15:56
---------------------------------------------------------------------
local setting = require("config.setting.setting")
---@type data_money
local data_money = require("config.data_money")
local smbb_misc = smbb_misc
local money_lib = require("logic.lib.money_lib")
local role_lib = require("logic.lib.role_lib")
local role_gm = {}

local function decode_spec(Spec)
    local args = {}
    for w in string.gmatch(Spec, "%d+") do
        table.insert(args, tonumber(w))
    end
    return table.unpack(args)
end

local function maybe_money(name)
    for typeid, money in pairs(data_money) do
        if money.name == name then
            return typeid
        end
    end
end

local cheat_handle = {}

function role_gm.extra_handle(word, commond)
    local money_typeid = maybe_money(word)
    assertex(money_typeid ~= nil, "cheat unkonw money " .. word)
    if money_typeid then
        cheat_handle.money(money_typeid .. commond)
    end
end

function cheat_handle.money(commond)
    local money_type, money_num = decode_spec(commond)
    local reward = { { money_type, money_num } }
    local AddReturn = money_lib.add_moneylist(reward)
    --@todo 添加行为记录
    money_lib.money_notify(AddReturn)
end

function cheat_handle.exp(commond)
    local add_exp = decode_spec(commond)
    if is_number(add_exp) and add_exp > 0 then
        local role_info = role_lib.add_exp(add_exp, ADD_LOG_TYPE_GM)
        role_lib.exp_update_notify(role_info)
    end
end

---cs_gm_test_check
---@param cs_gm_test cs_gm_test
local function cs_gm_test_check(cs_gm_test)
    if setting.is_release then
        return error_return(2)
    end
    return success_return(cs_gm_test)
end

---cs_gm_test_success
---@param cs_gm_test cs_gm_test
local function cs_gm_test_success(cs_gm_test)
    ---@type sc_gm_test
    local commond = cs_gm_test.command
    local s, e = string.find(commond, " ")
    local funcname = string.sub(commond, 1, s - 1)
    local left_commond = string.sub(commond, e)
    if cheat_handle[funcname] then
        cheat_handle[funcname](left_commond)
    else
        role_gm.extra_handle(funcname, left_commond)
    end
    ---@type sc_gm_test
    local sc_gm_test = { result = 1 }
    smbb_misc.send_client(SC_GM_TEST, sc_gm_test)
end

---cs_gm_test_error
---@param errno number
local function cs_gm_test_error(errno)
    ---@type sc_gm_test
    local sc_gm_test = { result = errno }
    smbb_misc.send_client(SC_GM_TEST, sc_gm_test)
end

local function cs_gm_test_exception()
    smbb_misc.send_client(SC_GM_TEST, {result = 0})
end

---@param  cs_gm_test  cs_gm_test
function role_gm.cs_gm_test(cs_gm_test)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle = cs_gm_test_success
    cs_handle.error_handle = cs_gm_test_error
    cs_handle.exception_handle = cs_gm_test_exception
    cs_handle:run(cs_gm_test_check, cs_gm_test)
end



return role_gm
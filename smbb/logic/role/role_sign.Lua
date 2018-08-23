---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--  签到
-- @end
-- Created : 21. 八月 2018 17:13
---------------------------------------------------------------------
local role_data = role_data
local smbb_mongo = smbb_mongo
local smbb_util = smbb_util
local smbb_misc = smbb_misc
local data_sign = require("config.data_sign")
local reward_lib = reward_lib
local table = table
local logger = logger

local role_sign = {}

function role_sign.init()
    local roleid = role_data.get_role_id()
    local sign_info = smbb_mongo.get(DATABASE_TABLES.sign_info, roleid)
    local sign_info_r
    if is_record(sign_info, RECORD.sign_info_t) then
        sign_info_r = { val = sign_info, is_dirty = false }
    else
        sign_info = RECORD.sign_info_t()
        sign_info.roleid = role_data.get_role_id()
        sign_info_r = { val = sign_info, is_dirty = false }
    end
    return sign_info_r
end

---calc_new
---@param sign_info sign_info
local function calc_new(sign_info)
    local nowsec = smbb_util.nowsec()
    local curtime = smbb_util.unixtime_to_datetime(nowsec)
    local is_same_day = smbb_util.is_same_day(sign_info.lastrefsec, nowsec, data_sign.reftime)
    local is_same_month = smbb_util.is_same_month(sign_info.lastrefsec, nowsec, data_sign.reftime)
    local cur_month_sign
    if is_same_month then
        cur_month_sign = sign_info.cur_month_sign
    else
        cur_month_sign = 0
    end
    local cur_month_reward_list = data_sign.reward_list[curtime.month]
    local have_reward = (cur_month_reward_list[cur_month_sign+1] ~= nil) and (not is_same_day)
    return curtime.month, have_reward, cur_month_sign
end

local function get_add_reward(drawdsigndays)
    local sign_add_reward_list = (data_sign.sign_add_reward)
    return table.walk2(sign_add_reward_list, function(reward, needdays)
        if needdays > drawdsigndays then
            return { needdays, reward }
        end
    end)
end

local function get_add_reward_info(signdays, draw_sign_times)
    local needdays, reward = get_add_reward(draw_sign_times)
    if needdays then
        ---@type p_sign_add_reward
        local p_sign_add_reward = { signtimes = signdays, need_times = needdays, reward = reward_lib.p_reward(reward) }
        return p_sign_add_reward
    end
end

local function p_sign_reward(tbl)
    ---@type p_sign_reward
    local p_sign_reward_r = { multiNeedVip = tbl.need_vip, reward = reward_lib.p_reward(tbl.reward) }
    return p_sign_reward_r
end

local function get_rewardList(month)
    local reward_list = data_sign.reward_list[month]
    if reward_list ~= nil then
        local p_sign_reward_list = {}
        table.walk(reward_list, function(oneday_sign, day)
            table.insert(p_sign_reward_list, p_sign_reward(oneday_sign))
        end)
        return p_sign_reward_list
    end
end

---@param  cs_sign_info  cs_sign_info
function role_sign.cs_sign_info(cs_sign_info)
    local SignInfo = role_data.get_sign_info()
    local Month, CanSign, CurMonthSign = calc_new(SignInfo)
    local SignDays = SignInfo.signdays
    local DrawSignDays = SignInfo.draw_sign_times
    local AddRewardInfo = get_add_reward_info(SignDays, DrawSignDays)
    local RewardList = get_rewardList(Month)
    smbb_misc.send_client(SC_SIGN_INFO,
            { month = Month, can_sign = CanSign, month_sign_times = SignDays, rewardlist = RewardList, add_reward = AddRewardInfo })
end

---cs_sign_draw_check
---@param cs_sign_draw cs_sign_draw
local function cs_sign_draw_check(cs_sign_draw)
    local sign_info = role_data.get_sign_info()
    local month, cansign, cur_month_sign = calc_new(sign_info)
    if not cansign then
        return error_return(2)
    end
    local oneday_sign = data_sign.reward_list[month][cur_month_sign + 1]
    local need_vip, reward = oneday_sign.need_vip, oneday_sign.reward
    sign_info.lastrefsec = smbb_util.nowsec()
    sign_info.signdays = sign_info.signdays + 1
    sign_info.cur_month_sign = cur_month_sign + 1
    local role_info = role_data.get_role_info()
    if need_vip <= role_info.viplv then
        reward = reward_lib.merge(reward, reward)
    end
    return success_return(reward, sign_info)
end

local function cs_sign_draw_success(reward, sign_info)
    role_data.set_sign_info(sign_info)
    local reward_return = reward_lib.reward(reward)
    reward_lib.log(role_data.get_role_id(), reward_return, 1, 0, "")
    reward_lib.notify(reward_return)
    --- @type sc_sign_draw
    local sc_sign_draw = { result = 1, reward = reward_lib.p_reward(reward) }
    smbb_misc.send_client(SC_SIGN_DRAW, sc_sign_draw)
end

---cs_sign_draw_error
---@param errno number
local function cs_sign_draw_error(errno)
    smbb_misc.send_client(SC_SIGN_DRAW, { result = errno })
end

local function cs_sign_draw_exception()
    smbb_misc.send_client(SC_SIGN_DRAW, { result = ERR_CODE.SYS_ERR })
end

---@param  cs_sign_draw  cs_sign_draw
function role_sign.cs_sign_draw(cs_sign_draw)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle = cs_sign_draw_success
    cs_handle.error_handle = cs_sign_draw_error
    cs_handle.exception_handle = cs_sign_draw_exception
    cs_handle:run(cs_sign_draw_check, cs_sign_draw)
end

---cs_sign_draw_add_check
---@param cs_sign_draw_add cs_sign_draw_add
local function cs_sign_draw_add_check(cs_sign_draw_add)
    local sign_info = role_data.get_sign_info()
    local needdays, reward = get_add_reward(sign_info.draw_sign_times)
    if not needdays then
        return error_return(2)
    end
    if sign_info.signdays < needdays then
        return error_return(3)
    end
    sign_info.draw_sign_times = needdays
    return success_return(reward, sign_info)
end

local function cs_sign_draw_add_success(reward, sign_info)
    role_data.set_sign_info(sign_info)
    local reward_return = reward_lib.reward(reward)
    reward_lib.log(role_data.get_role_id(), reward_return, 1, 0, "")
    reward_lib.notify(reward_return)
    --- @type sc_sign_draw_add
    local sc_sign_draw_add = {result = 1, reward = reward_lib.p_reward(reward)}
    smbb_misc.send_client(SC_SIGN_DRAW_ADD, sc_sign_draw_add)
end

---cs_sign_draw_add_error
---@param errno number
local function cs_sign_draw_add_error(errno)
    smbb_misc.send_client(SC_SIGN_DRAW_ADD, {result = errno})
end

local function cs_sign_draw_add_exception()
    smbb_misc.send_client(SC_SIGN_DRAW_ADD, {result = ERR_CODE.SYS_ERR})
end

---@param  cs_sign_draw_add  cs_sign_draw_add
function role_sign.cs_sign_draw_add(cs_sign_draw_add)
    local cs_handle = CS_HANDLE()
    cs_handle.success_handle =  cs_sign_draw_add_success
    cs_handle.error_handle =  cs_sign_draw_add_error
    cs_handle.exception_handle = cs_sign_draw_add_exception
    cs_handle:run(cs_sign_draw_add_check, cs_sign_draw_add)
end

return role_sign
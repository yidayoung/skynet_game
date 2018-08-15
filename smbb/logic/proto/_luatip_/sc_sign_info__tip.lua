
---@class sc_sign_info
---@field month uint64 @当前是几月
---@field can_sign bool @当前是否可以签到
---@field month_sign_times uint64 @当前月份签到次数
---@field rewardlist p_sign_reward[] @签到给予的奖励信息
---@field add_reward p_sign_add_reward @累计签到信息
local m={}
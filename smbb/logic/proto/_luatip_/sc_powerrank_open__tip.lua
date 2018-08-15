
---@class sc_powerrank_open
---@field start_time uint64 @开启时间戳
---@field end_time uint64 @结束时间戳
---@field priority uint64 @活动优先级
---@field icon string @图标
---@field title string @名称
---@field content string @内容
---@field is_open uint64 @是否是开服活动
---@field rewardger uint64 @奖励的武将的typeid
---@field max_power uint64 @历史最高战斗力,不显示用来算奖励那是不是已完成
local m={}
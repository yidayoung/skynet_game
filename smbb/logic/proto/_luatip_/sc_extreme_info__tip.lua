
---@class sc_extreme_info
---@field result uint64 @是否开启 1：开启成功 2:等级不够 3:开服时间不够，4：休赛时间 5:活动还未开始 6:主服挂了 7:配置错误
---@field curscore uint64 @当前积分
---@field division uint64 @段位 eg：最强王者
---@field seasonbegin uint64 @开始时间
---@field boxbattle p_extreme_boxbattle[] @战斗宝箱(胜负为不同的宝箱)
---@field boxfree p_extreme_boxfree @免费箱子
---@field boxwin p_extreme_boxwin @(战功宝箱信息,即累积胜利场次的箱子)
---@field standuplist p_extreme_standup[] @当前阵容列表
---@field quickopennum uint64 @快速开启次数
---@field challengetm string @可挑战时间段
local m={}
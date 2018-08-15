
---@class sc_extreme_notify_info
---@field quickopennum uint64 @快速开启次数
---@field curscore uint64 @当前积分
---@field division uint64 @段位 eg：最强王者
---@field seasonbegin uint64 @开始时间
---@field result uint64 @是否开启 1：开启成功 2:等级不够 3:开服时间不够，4：休赛时间 5:活动还未开始
---@field cleanstandup uint64 @是否将阵型清空 1：清空
local m={}
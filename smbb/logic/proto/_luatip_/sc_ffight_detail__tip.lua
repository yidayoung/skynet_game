
---@class sc_ffight_detail
---@field state uint64 @ 状态
---@field etime uint64 @ 状态结束时间
---@field isign uint64 @ (1: = 已报名;2: = 未报名)
---@field self p_ffight_family[] @ 我方公会详情
---@field enemy p_ffight_family[] @ 敌方公会详情
local m={}
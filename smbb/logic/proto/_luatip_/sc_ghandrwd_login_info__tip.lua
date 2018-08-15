
---@class sc_ghandrwd_login_info
---@field start_time int32 @ 活动开始时间
---@field end_time int32 @ 活动结束时间
---@field login_days int32 @ 累计登录天数
---@field drawlist int32[] @ 已领取奖励的天数列表
---@field desc string @ 活动描述
---@field title string @ 活动名称
---@field reward p_view[] @ 奖励预览
---@field openlv uint32 @ vip等级限制
---@field openviplv uint32 @ 角色等级限制
local m={}
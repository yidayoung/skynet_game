
---@class p_activity
---@field actid uint64 @ 活动ID
---@field name string @ 活动名称
---@field class uint64 @ 活动类型
---@field icon string[] @ 活动图标
---@field endtime uint64 @ 结束时间
---@field refresh uint64 @ 刷新时间
---@field desc string @ 活动描述
---@field drawlist p_actidraw[] @ 子项列表
---@field args p_actiarg[] @ 附加参数
---@field condition p_actiarg[] @ 附加条件
---@field starttime uint64 @ 开始时间
---@field priority uint64 @ 优先级
---@field is_kaifu uint64 @ (1 : = 开服活动; 2 : = 其它活动)
local m={}
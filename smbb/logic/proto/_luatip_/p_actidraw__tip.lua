
---@class p_actidraw
---@field drawid uint64 @ 子项ID
---@field desc string @ 子项描述
---@field numlimit uint64 @ 次数限制
---@field condition p_actiarg[] @ 领取条件
---@field reward p_reward @ 领取奖励
---@field state uint64 @ 是否可领
---@field number uint64 @ 领取次数
local m={}
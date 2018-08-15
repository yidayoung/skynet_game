
---@class sc_fboss_report
---@field result uint64 @操作结果
---@field dungeonid uint64 @关卡ID
---@field attacker_win bool @是否获胜
---@field reward p_reward @获得的奖励
---@field harm_percent sint64 @造成的伤害的万分比，可能是负数
---@field harm_value sint64 @造成的伤害，可能是负数
local m={}

---@class p_achieve
---@field achieveid uint64 @ 成就ID
---@field progress uint64 @ 进度
---@field subaid uint64 @ 成就当前子ID
---@field state uint64 @ 成就状态(0: = 未完成,1: = 可领取,2: = 已完成)
---@field numacc uint64 @ 累计完成的子成就数量
local m={}
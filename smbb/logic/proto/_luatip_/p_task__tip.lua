
---@class p_task
---@field taskid uint64 @ 任务ID
---@field progress uint64 @ 任务进度
---@field subtid uint64 @ 子任务ID
---@field trigger uint64 @ 是否触发(0: = 未触发;1: = 已触发)
---@field endsec uint64 @ 任务结束时间
local m={}
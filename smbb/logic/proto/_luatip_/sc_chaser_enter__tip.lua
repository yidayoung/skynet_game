
---@class sc_chaser_enter
---@field result uint64 @ 结果
---@field is_open bool @ 活动是否开启
---@field is_teamup bool @ 是否组队
---@field chaser_times uint64 @ 今日已挑战次数
---@field mon_list p_ger_summary[] @ 怪物列表
---@field chaser_list p_chaser[] @ 玩家列表
---@field teamid uint64 @ 队伍ID
---@field startsec uint64 @ 活动开始时间
---@field endsec uint64 @ 活动结束时间
local m={}
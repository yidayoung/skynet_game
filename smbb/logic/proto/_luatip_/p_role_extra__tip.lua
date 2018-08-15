
---@class p_role_extra
---@field roleid uint64 @ 角色ID
---@field energy uint64 @ 体力值
---@field energy_next_recv uint64 @ 下次体力回复时间
---@field energy_buy_times uint64 @ 今日体力购买次数
---@field skill_point uint64 @ 技能点
---@field skill_point_next_recv uint64 @ 下次技能点回复时间
---@field skill_point_buy_times uint64 @ 今日技能点购买次数
---@field click_gold_times uint64 @ 今日点金次数
---@field firstatk uint64 @ 战队先手值
---@field mine_energy uint64 @ 挖矿体力
---@field mine_energy_next_recv uint64 @ 下次挖矿体力回复时间
---@field mine_energy_buy_times uint64 @ 今日挖矿体力购买次数
---@field icon_list uint64[] @ 特殊头像icon list
---@field cd_time_rename uint64 @ 更名cd
local m={}
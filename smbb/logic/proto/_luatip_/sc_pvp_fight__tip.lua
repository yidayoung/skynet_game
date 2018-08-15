
---@class sc_pvp_fight
---@field result uint64 @ 结果
---@field newrank uint64 @ 新排名
---@field dropreward p_reward @ 掉落奖励
---@field fight_struct p_fight_struct @ 战斗结构
---@field pvptimes uint64 @ PVP可挑战次数
---@field pvplist p_pvp[] @ 新挑战列表
---@field atkpvp p_pvp @ 本方PVP
---@field defpvp p_pvp @ 对方PVP
---@field cooltime uint64 @ 挑战冷却倒计时
---@field eracost p_money @ 清除消耗
local m={}
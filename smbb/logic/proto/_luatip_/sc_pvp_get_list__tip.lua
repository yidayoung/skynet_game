
---@class sc_pvp_get_list
---@field rank uint64 @ 当前排名
---@field pvplist p_pvp[] @ 挑战列表
---@field pvptimes uint64 @ 已挑战次数
---@field buytimes uint64 @ 购买次数
---@field cooltime uint64 @ 挑战冷却倒计时
---@field worshipids uint64[] @ 膜拜的玩家ID列表
---@field showicon p_showicon @ 展示icon
---@field refcost p_money @ 刷新消耗
---@field eracost p_money @ 冷却清除消耗
local m={}
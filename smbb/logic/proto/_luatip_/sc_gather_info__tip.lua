
---@class sc_gather_info
---@field gatherlist p_gather[] @ 激活合体列表
---@field npclist p_npc[] @ 激活材料npc列表
---@field dun_lv uint64 @ 关卡当前等级，有了就只能直接挑战没才能选
---@field today_harm uint64 @ 今天的伤害
---@field is_complete bool @ 今天是否已经完成副本
---@field max_lv uint64 @ 当前可选择的关卡最大等级
---@field dun_id uint64 @ 关卡ID
local m={}

---@class sc_battle_fight_report
---@field result uint64 @ 请求结果
---@field dungeonid uint64 @ 关卡ID
---@field attacker_win bool @ 是否胜利
---@field starcount uint64 @ 星星数量
---@field addrolexp uint64 @ 增加主角经验
---@field addgerexp uint64 @ 增加宝贝经验
---@field reward p_reward @ 其余奖励信息
---@field star_array bool[] @ 每颗星星有没有
local m={}
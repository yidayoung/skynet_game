
---@class p_ffight_hist
---@field histid uint64 @ 战报ID
---@field type uint64 @ (1: = 我方为攻击;2: = 我方为受击)
---@field atkname string @ 攻击方名字
---@field defname string @ 防御方名字
---@field result uint64 @ 攻击结果(1: = 胜利;2: = 失败)
---@field replay p_fight_struct[] @ 具体战斗录像
---@field addstar uint64 @ 增加星星数
---@field timestamp uint64 @ 战斗时间戳
local m={}
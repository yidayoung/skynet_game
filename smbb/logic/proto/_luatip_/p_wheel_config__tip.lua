
---@class p_wheel_config
---@field one_cost p_money[] @抽取1次的花费
---@field ten_cost p_money[] @抽取10次的花费
---@field box_list p_reward[] @转盘上的格子的奖励列表
---@field times_box_list p_wheel_box[] @次数奖励盒子信息
---@field lucky_reward p_reward @幸运奖励
---@field rank_reward_list p_wheel_rank_reward[] @排行榜奖励
---@field luck_need uint64 @幸运奖励入场需要的基础积分
local m={}
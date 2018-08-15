
---@class p_mine_car
---@field pos uint64 @位置
---@field cur_type uint64 @当前矿的typeid
---@field is_mine bool @是不是自己的矿
---@field dig_start_time uint64 @挖矿开始时间
---@field reward_time uint64 @开采结束的时间
---@field base_reward p_reward @基础收益
---@field reward_rate uint64 @当前的收益万分比,没被攻击的时候是1W
---@field role_list p_mine_seat[] @正在护矿的人的RoleID列表，自己也包括
local m={}
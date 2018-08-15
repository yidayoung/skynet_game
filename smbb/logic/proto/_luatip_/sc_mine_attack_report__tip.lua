
---@class sc_mine_attack_report
---@field result uint64 @ 请求结果
---@field attacker_win bool @ 是否胜利
---@field seat_list p_mine_seat[] @位置上的人信息
---@field reward p_reward @奖励内容
---@field dead_gerid_list uint64[] @总共死亡的宝贝id列表
local m={}
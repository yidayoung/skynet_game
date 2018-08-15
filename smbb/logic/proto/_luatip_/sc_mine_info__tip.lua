
---@class sc_mine_info
---@field result uint64 @请求挖矿主界面结果
---@field cur_buy_cost p_money[] @直接去买矿的消耗
---@field cur_search_cost p_money[] @搜索其他玩家的矿需要的消耗
---@field car_list p_mine_car[] @矿车的信息
---@field cur_atk_info p_mine_atk_info @当前正在攻击的目标
---@field used_geridList uint64[] @当前已经使用宝贝
---@field tar_mine p_mine_detail @对方的矿坑信息,只在有进攻目标的时候有值
local m={}
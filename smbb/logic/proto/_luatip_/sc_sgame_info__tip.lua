
---@class sc_sgame_info
---@field result uint64
---@field sgame_base sgame_base_info @对应小游戏基础信息
---@field canusenum uint64 @小游戏当前可用次数（所有小游戏公用同一个次数）
---@field totalnum uint64 @小游戏当日总共可用次数
---@field buy_times uint64 @小游戏当日已购买次数
local m={}
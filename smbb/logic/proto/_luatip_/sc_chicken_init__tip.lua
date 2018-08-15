
---@class sc_chicken_init
---@field result uint64 @结果
---@field my_summary p_chicken_summary @自己的基础信息
---@field player_list p_chicken_player[] @所有玩家的当前状态，死人就已经从本局删掉了
---@field player_info p_chicken_public[] @本局参与玩家列表的基础信息，只会发这一次，后面都是通过roleid关联
---@field round uint64 @当前在第几个圈
---@field next_round_sec uint64 @这个圈缩完的时间
local m={}
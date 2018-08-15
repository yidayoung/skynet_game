
---@class sc_choicefight_info
---@field is_normal_act bool @普通模式-是否已激活
---@field curn_chapterid uint64 @---------当前章节ID
---@field curn_buffid uint64 @---------当前buffID
---@field normal_dungeonid_list uint64[] @---------完成关卡ID列表
---@field choice_energy uint64 @---------当前拥有充能点
---@field next_add uint64 @---------下次恢复充能点时间戳
---@field hard_times uint64 @困难模式-已重置次数
---@field is_hard_act bool @---------是否已激活
---@field curh_chapterid uint64 @---------当前章节ID
---@field curh_buffid uint64 @---------当前buffID
---@field boss_fight uint64 @---------BOSS已挑战次数
---@field boss_buy uint64 @---------BOSS已购买次数
---@field hard_dungeonid_list uint64[] @---------完成关卡ID列表
---@field hard_buy uint64 @---------副本购买次数
local m={}
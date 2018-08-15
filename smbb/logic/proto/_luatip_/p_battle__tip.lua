
---@class p_battle
---@field battleid uint64 @ 战役ID(1 : = 主线; 2 : = 精英)
---@field progress uint64 @ 当前进度(已通过的最大关卡ID)
---@field chapter_list p_chapter[] @ 章节简略信息预览列表
---@field maxstory uint64 @ 已播放过的最大剧情关卡ID
---@field is_open bool @ 是否开启
---@field cha_times uint64 @ 特殊战役挑战次数
---@field last_cha_sec uint64 @ 上次挑战特殊副本时间
local m={}
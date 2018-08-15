
---@class p_digivice
---@field digid uint64 @ 第X代
---@field level uint64 @ 等级
---@field exp uint64 @ 经验
---@field reflist p_refine[] @ 洗炼列表
---@field isopen bool @ 数码机是否开启
---@field condlist p_dig_cond[] @ 数码机开启条件
---@field digattr p_attr @ 数码机强化总属性
local m={}
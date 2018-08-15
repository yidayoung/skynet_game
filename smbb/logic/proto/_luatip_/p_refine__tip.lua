
---@class p_refine
---@field refid uint64 @ 洗炼ID
---@field state uint64 @ 洗炼状态
---@field attrlist p_refine_attr[] @ 洗炼子属性列表
---@field tmplist p_refine_attr[] @ 洗炼临时列表(属性待替换状态下使用)
local m={}
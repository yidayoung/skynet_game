
---@class p_equip
---@field equipid uint64 @ 装备ID
---@field typeid uint64 @ 模板ID
---@field rank uint64 @ 装备品阶
---@field exp uint64 @ 装备的经验值
---@field level uint64 @ 装备等级
---@field star uint64 @ 装备星级
---@field pos uint64 @ 装备位置
---@field gerid uint64 @ 被装备的武将id
---@field attr p_attr @ 装备属性
---@field precious_info p_equip_precious[] @ 装备插槽信息
---@field destinys p_destiny[] @ 激活天命的id列表
local m={}
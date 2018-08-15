
---@class p_shop
---@field shopid uint64 @ 商店ID
---@field nextref uint64 @ 下次刷新时间
---@field refneed uint64 @ 刷新消耗
---@field endtime uint64 @ 关闭时间
---@field sells1 p_sell[] @ 商品列表(上排)
---@field sells2 p_sell[] @ 商品列表(下排)
---@field reftype uint64 @ 商店刷新消耗类型
---@field shopmoney uint64 @ 商店对应的货币类型
local m={}
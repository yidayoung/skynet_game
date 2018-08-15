
---@class p_family_packet
---@field type uint64 @红包的类型
---@field packettimes uint64 @红包的可抢次数
---@field packetgold uint64 @红包的总量
---@field packetnums uint64 @红包的数量
---@field packetbestRole string @红包最高获得者
---@field isdraw bool @当天是否已经领取过该类型的红包
local m={}
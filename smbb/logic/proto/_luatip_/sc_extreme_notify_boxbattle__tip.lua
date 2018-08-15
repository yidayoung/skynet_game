
---@class sc_extreme_notify_boxbattle
---@field boxid uint64 @id 0：表示该位置为空
---@field boxtype uint64 @类型 1:失败宝箱， 2：胜利宝箱
---@field boxpos uint64 @位置
---@field boxtime uint64 @宝箱解锁后的可领取时间 unix_time，0表示未解锁
local m={}
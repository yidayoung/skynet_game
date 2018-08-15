
---@class p_mine_detail
---@field ownerID uint64 @主人角色ID
---@field ownerName string @主人名字
---@field mineTypeID uint64 @矿坑模板ID
---@field releaseTime uint64 @如果是要攻击这个矿而不是护矿就是自动释放时间
---@field rewardTime uint64 @矿坑生命期
---@field seat_list p_mine_seat[] @位置上的人信息
---@field pos uint64 @矿在这个人的那个矿位
local m={}
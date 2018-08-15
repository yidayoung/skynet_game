
---@class p_chicken_player
---@field role_id uint64 @玩家的roleID
---@field pos uint64 @玩家当前位置，无论是据点还是出生点都是平级的，就算在移动，到到之前他都是在出发点
---@field state uint64 @玩家当前的状态
---@field target uint64 @目标位置
---@field arrive_sec uint64 @到达时间
---@field show_ger uint64 @显示宝贝的typeid
---@field stage uint64 @显示的阶段
---@field hp_percent uint64 @血量万分比
---@field clothes uint64 @时装状态
---@field expiresec sint64 @时装的到期时间
local m={}

---@class sc_fboss_info
---@field result uint64 @请求是否成功
---@field curdungeonid uint64 @当前关卡ID
---@field nowhp_percent uint64 @当前血量万分比
---@field gerlist p_lineup[] @选中的阵容
---@field addattr uint64 @增加的属性加成万分比
---@field leftatktimes uint64 @剩余的挑战次数
---@field drawdungeonids uint64[] @已经领取通关奖励的关卡
local m={}
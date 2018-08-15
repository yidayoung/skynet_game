
---@class p_homefight_member_dt
---@field role_id uint64 @角色ID
---@field role_name string @角色名
---@field ger_type uint64 @宝贝的TypeID
---@field power uint64 @宝贝的战斗力
---@field hp_percent uint64 @血量万分比
---@field state uint64 @状态
---@field pos uint64 @当前位置
---@field tar_pos uint64 @目标位置
---@field arrive_sec uint64 @到达的时间
---@field reborn_sec uint64 @复活时间
---@field buf_list uint64[] @已购买的buf列表
---@field harm_val uint64 @伤害值
---@field fort_id uint64 @如果在据点里时，具体的据点ID
---@field atk_pos uint64 @攻击的位置
local m={}
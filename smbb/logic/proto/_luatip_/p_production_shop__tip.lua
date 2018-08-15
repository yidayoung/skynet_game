
---@class p_production_shop
---@field prod_id int32 @生产器id
---@field is_open int32 @生产器是否开放
---@field level int32 @生产器等级
---@field exp int64 @生产器当前等级的经验值
---@field stor_material int64 @生产器当前存储的材料数量
---@field stor_exp int64 @生产器当前存储的经验数量
---@field stor_gold int64 @生产器当前存储的金币数量
---@field col_num int64 @当前累计收集的材料数量
---@field prod_time int64 @当前生产还剩余时间
local m={}
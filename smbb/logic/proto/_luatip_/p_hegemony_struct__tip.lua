
---@class p_hegemony_struct
---@field roleid uint64 @ 角色ID
---@field baseinfo p_role_public @ 基本数据
---@field prelilist p_ger_summary[] @ 预赛阵容
---@field finallist p_ger_summary[] @ 决赛阵容
---@field betting_number uint64 @ 押注人数
---@field win_count uint64 @ 胜场次数
---@field lose_count uint64 @ 败场次数
---@field points uint64 @ 积分
---@field rank uint64 @ 排名
---@field betting_rate uint64 @压注后的赔率
local m={}
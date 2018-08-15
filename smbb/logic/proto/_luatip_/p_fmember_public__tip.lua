
---@class p_fmember_public
---@field baseinfo p_role_public @ 基本信息
---@field title uint64 @ 权限(0: = 成员;1: = 副会长;2: = 会长)
---@field totalcons uint64 @ 个人累计贡献度
---@field todaycons uint64 @ 个人当天的贡献
---@field atkline p_line_summary @ 阵容信息（进攻阵容）
---@field defline p_line_summary @ 阵容信息（防守阵容）
local m={}
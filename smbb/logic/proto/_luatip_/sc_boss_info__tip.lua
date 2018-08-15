
---@class sc_boss_info
---@field state uint32 @ BOSS 状态
---@field cd_time uint64 @ 挑战冷却时间
---@field boss_info p_boss @ BOSS信息
---@field role_draw_inds uint32[] @ 已领取玩家tops领奖id
---@field family_draw_inds uint32[] @ 已领取公会tops领奖id
---@field begin_time uint64 @ boss活动时间begin
---@field end_time uint64 @ boss活动时间end
---@field b_vip_sel int32 @ 是否选择了vip自动打
---@field open_time uint64 @ 活动开启时间
local m={}

---@class sc_family_info
---@field result uint64 @ 请求结果
---@field familyinfo p_family[] @ 公会信息
---@field members p_fmember_public[] @ 成员列表
---@field lastquit uint64 @ 最后一次退出公会的时间
---@field applylist uint64[] @ 已申请公会ID列表
---@field donate_times uint64 @ 今日已捐献次数
local m={}
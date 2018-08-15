
---@class sc_acitivity_kaifu
---@field endtime uint64 @开服活动的结束时间,如果是0则表示没开放
---@field activity p_activity[] @当前活动内容
---@field drawtime uint64 @什么时候可以领取结算奖励
---@field reward p_reward @结算满额度奖励
---@field isdraw bool @当前是否已经领取过结算奖励
local m={}
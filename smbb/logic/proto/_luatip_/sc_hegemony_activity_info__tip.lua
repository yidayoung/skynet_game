
---@class sc_hegemony_activity_info
---@field endtime uint64 @开服活动的结束时间,如果是0则表示没开放,下面的字段也不会有
---@field activity p_activity[] @当前活动内容
---@field drawtime uint64 @什么时候可以领取结算奖励
---@field reward p_reward @结算满额度奖励
---@field isdraw bool @当前是否已经领取过结算奖励
local m={}
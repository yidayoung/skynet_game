
---@class p_mail
---@field mailid uint64 @ 邮件ID
---@field tempid uint64 @ 模板ID(也是类型ID)
---@field content string @ 邮件内容
---@field reward p_reward @ 附加奖励
---@field isread uint64 @ 是否已读(0: = 未读,1: = 已读)
---@field drawed uint64 @ 是否领取(0: = 未领,1: = 已领)
---@field timestamp uint64 @ 生成时间戳
---@field subtype uint64 @ 子类型(主要用于表现区分)
---@field title string @ 邮件标题
---@field autoget uint64 @ 是否能一键读取 0:不能,1:能
local m={}
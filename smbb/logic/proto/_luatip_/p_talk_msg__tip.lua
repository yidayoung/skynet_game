
---@class p_talk_msg
---@field type uint64 @ 消息类型
---@field uid uint64 @ 消息UID
---@field time uint64 @ 时间戳
---@field src_id uint64 @ 发送者ID
---@field src_name string @ 发送者名字
---@field content string @ 消息内容
---@field icon uint64 @ 发送者头像
---@field frame uint64 @ 发送者相框
---@field vip uint32 @ 发送者vip信息
---@field args int64[] @ 特殊消息的扩展参数
local m={}

---@class p_friend_msg
---@field type uint64 @ 消息类型
---@field uid uint64 @ 消息UID
---@field time uint64 @ 时间戳
---@field src_id uint64 @ 发送者ID
---@field src_name string @ 发送者名字
---@field content string @ 消息内容
---@field icon uint64 @ 发送者头像
---@field desc string @ 描述
---@field role_public p_role_public @ 角色公共信息只有好友申请消息才有值
local m={}
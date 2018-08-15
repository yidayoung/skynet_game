
---@class cs_account_login
---@field accid uint64 @ 账号ID
---@field accname string @ 账号名
---@field deadline uint64 @ 有效时间
---@field ticket string @ 验证密钥
---@field svrid uint64 @ 服务器ID
---@field srctype uint64 @ 渠道ID
---@field mac string @ MAC地址
---@field devid string @ 设备ID
---@field phone_model string @ 机型
---@field sys_version string @ 系统版本
---@field subtype uint64 @ 广告渠道
---@field ip_info string @ IP地址信息
---@field fc_type uint64 @ 财务渠道
local m={}
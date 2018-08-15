
---@class p_rmbgift
---@field typeid uint64 @礼包ID
---@field sellID uint64 @充值的时候给appstore发的sellid
---@field start_sec uint64 @开启时间 0表示永久
---@field end_sec uint64 @结束时间 0表示永久
---@field now_price uint64 @当前价格RMB
---@field old_price uint64 @原价
---@field need_vip_lv uint64 @需要的vip等级
---@field reward p_reward @礼包的内容
---@field name string @礼包的名字
---@field icon string @icon资源的名称
---@field draw_times uint64 @已经购买的次数
---@field can_draw_times uint64 @可购买的次数
---@field refresh_type uint64 @购买次数刷新方式
---@field refresh_day uint64 @购买次数刷新时间
---@field desc string @礼包描述
---@field show_state uint64 @礼包默认显示状态
local m={}

---@class sc_pray_info
---@field result uint32 @操作结果
---@field endtime uint64//
---@field typeid uint64 @本期宝贝的typeid
---@field self_score uint64 @自己的积分
---@field draw_indexs uint64[] @已经领取的积分奖励档位
---@field one_cost p_reward @一次消耗
---@field ten_cost p_reward @十次消耗
---@field count uint32 @当前祈福次数
---@field pray_state uint32 @当前祈福次数
---@field bfree uint32 @第一次单次祈福免费
---@field client_show_info p_client_show_info @客户端显示信息
local m={}
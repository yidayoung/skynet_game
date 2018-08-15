
---@class p_trial
---@field curdun uint64 @ 当前试炼层级
---@field curscore uint64 @ 今日积分
---@field chatimes uint64 @ 今日已挑战次数
---@field curmorale uint64 @ 今日士气
---@field hisscore uint64 @ 历史积分
---@field addattr p_attr @ 普通buff
---@field deadlist uint64[] @ 今日试炼挑战中已阵亡的宝贝id列表(不能再次上阵)
---@field tbox p_tbox[] @ 宝箱信息
---@field bufflist p_buff[] @ 若当前试炼层级为buff关卡,发送buff购买信息,反之为空
---@field gertypeid uint64 @ 玩家购买复活buff时返回复活的宝贝typeid
---@field monlist p_mon[] @ 怪物关卡信息
---@field state uint64 @ 状态
---@field bdunids uint64[] @ buff关卡id(快速通关显示进度)
---@field ctype uint64 @ 怪物关卡上次挑战难度
local m={}
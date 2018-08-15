
---@class p_hegemony_final_hist
---@field atk_id uint64 @ 攻击者ID
---@field def_id uint64 @ 防御者ID
---@field atk_name string @ 攻击者名字
---@field def_name string @ 防御者名字
---@field atk_icon uint64 @ 攻击者头像
---@field def_icon uint64 @ 防御者头像
---@field result uint64 @ (1: = 攻击方胜利,2: = 防御方胜利,3: = 进攻方放弃,4: = 进攻方轮空)
---@field draw_box uint64 @ 宝箱领取时间
---@field round uint64 @ 所属轮数
---@field histid uint64 @ 战报ID
---@field replay p_fight_struct @ 战斗录像
---@field timestamp uint64 @ 战报生成时间
local m={}
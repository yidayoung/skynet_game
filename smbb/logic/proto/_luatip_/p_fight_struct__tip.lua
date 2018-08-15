
---@class p_fight_struct
---@field seed sint64[] @ 随机种子(三元组)
---@field max_round_limit sint64 @ 最大回合数限制
---@field dgmon_list p_fight_dgmon[] @ 第一轮数码兽列表
---@field sumer_list p_fight_sumer[] @ 第一轮训练师列表
---@field dgmon_list2 p_fight_dgmon[] @ 第二轮数码兽列表
---@field sumer_list2 p_fight_sumer[] @ 第二轮训练师列表
---@field dgmon_list3 p_fight_dgmon[] @ 第三轮数码兽列表
---@field sumer_list3 p_fight_sumer[] @ 第三轮训练师列表
---@field poshp_list p_fight_poshp[] @ 位置血量列表
---@field total_round sint64 @ 总回合数
---@field atk_trainer sint64 @ 攻击方训练师
---@field def_trainer sint64 @ 受击方训练师
---@field is_verify bool @ 是否为验证
---@field is_atk_auto bool @ 攻击方是否为自动
---@field is_def_auto bool @ 防御方是否为自动
---@field fight_type sint64 @ 战斗类型
---@field battle_index sint64 @ 打到了第几波
---@field atk_teamspeed sint64 @ 攻击方小队附加先手值
---@field def_teamspeed sint64 @ 防守方小队附加先手值
---@field atk_mp sint64 @ 攻击方的初始mp,如果是0表示使用配置的初始mp
---@field left_mp sint64 @ 攻击方的当前mp值 战斗结束的时候传回用
---@field right_mp sint64 @ 防守方的当前mp值 战斗结束的时候传回用
local m={}
sc = {}

---@param result uint64 @ 结果 
function sc.sc_account_create(result) end

---@param result uint64 @ 原因 
function sc.sc_account_kick(result) end

---@param result uint64 @ 登录结果 
---@param rstate uint64 @ 当前状态 
function sc.sc_account_login(result, rstate) end

---@param achievelist p_achieve[] @ 成就列表 
function sc.sc_achieve_activity(achievelist) end

---@param achievelist p_achieve[] @ 成就列表 
function sc.sc_achieve_adventure(achievelist) end

---@param result uint64 @ 领取结果 
---@param subaid uint64 @ 当前成就的子成就ID 
function sc.sc_achieve_draw(result, subaid) end

---@param achievelist p_achieve[] @ 成就列表 
function sc.sc_achieve_foster(achievelist) end

---@param newlist p_achieve[] @ 新增列表 
---@param updatelist p_achieve[] @ 更新列表 
---@param deletelist p_achieve[] @ 删除列表 
function sc.sc_achieve_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 结果 
---@param subaidlist uint64[] @ 子成就ID列表 
function sc.sc_achieve_one_draw(result, subaidlist) end

---@param endtime uint64 @开服活动的结束时间,如果是0则表示没开放 
---@param activity p_activity[] @当前活动内容 
---@param drawtime uint64 @什么时候可以领取结算奖励 
---@param reward p_reward @结算满额度奖励 
---@param isdraw bool @当前是否已经领取过结算奖励 
function sc.sc_acitivity_kaifu(endtime, activity, drawtime, reward, isdraw) end

---@param activity p_activity[] @改变了的活动内容 
function sc.sc_acitivity_kaifu_notify(activity) end

---@param weeklist p_active_week[] @ 每周的结构 
function sc.sc_activity_activy_view(weeklist) end

---@param result uint64 @ 购买结果 
---@param actid uint64 @ 对应活动ID 
function sc.sc_activity_czjj_buy(result, actid) end

---@param result uint64 @ 领取结果 
---@param newact p_activity[] @ 新信息 
function sc.sc_activity_draw(result, newact) end

---@param actlist p_activity[] @ 活动列表 
function sc.sc_activity_info(actlist) end

---@param result uint64 @ 领取结果 
---@param newact p_activity[] @ 新信息 
function sc.sc_activity_kaifu_draw(result, newact) end

---@param reward p_reward @具体领到的奖励内容 
function sc.sc_activity_kaifu_drawend(reward) end

---@param newlist p_actiview[] @ 新增列表 
---@param updatelist p_actiview[] @ 更新列表 
---@param deletelist p_actiview[] @ 删除列表 
function sc.sc_activity_notify(newlist, updatelist, deletelist) end

---@param prelist p_actiview[] @ 预览列表 
function sc.sc_activity_preview(prelist) end

---@param arg_list p_battle_args[] @参数列表 
function sc.sc_battle_activity_list(arg_list) end

---@param chapter p_chapter @ 章节信息 
function sc.sc_battle_chapter(chapter) end

---@param result uint64 @ 请求结果 
---@param chapterid uint64 @ 章节ID 
---@param reward p_reward @ 具体奖励信息 
function sc.sc_battle_chapter_reward(result, chapterid, reward) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param reward p_reward @ 具体奖励信息 
function sc.sc_battle_dungeon_reward(result, dungeonid, reward) end

---@param battle_id uint64 @副本类型 
---@param line p_lineup[] @当前阵容 
function sc.sc_battle_fight_line2(battle_id, line) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param attacker_win bool @ 是否胜利 
---@param starcount uint64 @ 星星数量 
---@param addrolexp uint64 @ 增加主角经验 
---@param addgerexp uint64 @ 增加宝贝经验 
---@param reward p_reward @ 其余奖励信息 
---@param star_array bool[] @ 每颗星星有没有 
function sc.sc_battle_fight_report(result, dungeonid, attacker_win, starcount, addrolexp, addgerexp, reward, star_array) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param attacker_win bool @ 是否胜利 
---@param starcount uint64 @ 星星数量 
---@param reward p_reward @ 其余奖励信息 
---@param star_array bool[] @ 每颗星星有没有 
---@param passing_rate uint64 @ 通过率(万分比) 
function sc.sc_battle_fight_report2(result, dungeonid, attacker_win, starcount, reward, star_array, passing_rate) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
---@param drop_reward_view p_reward @ 掉落奖励预览 
---@param addrolexp uint64 @ 增加主角经验 
---@param addgerexp uint64 @ 增加宝贝经验 
function sc.sc_battle_fight_request(result, dungeonid, fight_struct, drop_reward_view, addrolexp, addgerexp) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_battle_fight_request2(result, dungeonid, fight_struct) end

---@param result uint64 @操作结果 
---@param new_dungeon p_dungeon @如果操作成功则刷新新的关卡信息 
function sc.sc_battle_fight_reset(result, new_dungeon) end

---@param result uint64 @结果 
---@param line p_lineup[] @当前阵容 
function sc.sc_battle_fight_set_line2(result, line) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param real_sweep_num uint64 @ 实际扫荡次数 
---@param sweep_num uint64 @ 扫荡次数 
---@param addrolexp uint64 @ 增加主角经验 
---@param addgerexp uint64 @ 增加宝贝经验 
---@param normal_reward p_reward @ 普通奖励信息 
---@param extra_reward p_reward @ 额外奖励信息 
function sc.sc_battle_fight_sweep(result, dungeonid, real_sweep_num, sweep_num, addrolexp, addgerexp, normal_reward, extra_reward) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param real_sweep_num uint64 @ 实际扫荡次数 
---@param sweep_num uint64 @ 扫荡次数 
---@param reward p_reward @ 奖励信息 
function sc.sc_battle_fight_sweep2(result, dungeonid, real_sweep_num, sweep_num, reward) end

---@param battle_list p_battle[] @ 战役列表 
function sc.sc_battle_info(battle_list) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_battle_story_fight(result, dungeonid, fight_struct) end

---@param battle_list p_battle[] @ 战役列表 
function sc.sc_battle_update(battle_list) end

---@param todaydungeonid_list uint64[] @ 今天已经完成的关卡id 
---@param rwddungeon_list uint64[] @ 已经领取宝箱的关卡id 
---@param dungeonidrecord_list uint64[] @ 历史已经完成的关卡id 
function sc.sc_biogbattle_chapterinfo(todaydungeonid_list, rwddungeon_list, dungeonidrecord_list) end

---@param result int32 @ 挑战结果 
---@param atkteam_speed uint64 @ 行动值 
---@param atkteam_power uint64 @ 战斗力 
---@param defteam_speed uint64 @ 行动值 
---@param defteam_power uint64 @ 战斗力 
function sc.sc_biogbattle_disposal(result, atkteam_speed, atkteam_power, defteam_speed, defteam_power) end

function sc.sc_biogbattle_exchange() end

---@param result int32 @ 挑战结果 
---@param fight_struct p_fight_struct @ 战斗 
---@param fight_reward p_reward @ 击杀的奖励 
---@param streng_exp int32 @ 强化模块经验值 
---@param addrolexp uint64 @ 增加主角经验 
---@param addgerexp uint64 @ 增加宝贝经验 
---@param streng_level int32 @ 强化等级 
function sc.sc_biogbattle_fight(result, fight_struct, fight_reward, streng_exp, addrolexp, addgerexp, streng_level) end

---@param biogid_list p_biog_record[] @ 可供选择的剧情id列表 
---@param biogid int32 @ 已选择的剧情id(0表示没有选择) 
---@param streng_list streng_record[] @ 强化模块信息 
function sc.sc_biogbattle_info(biogid_list, biogid, streng_list) end

---@param result int32 @ 挑战结果 
---@param reward p_reward @ 奖励 
function sc.sc_biogbattle_openbox(result, reward) end

---@param biogid int32 @ 选择的剧情id 
function sc.sc_biogbattle_select(biogid) end

function sc.sc_biogbattle_shopclose() end

---@param commodity_list p_commodity_info[] @ 商品 
---@param shop_refresh_cost p_reward @ 
function sc.sc_biogbattle_shopopen(commodity_list, shop_refresh_cost) end

---@param new_commodity p_commodity_info @ 商品 
---@param next_need_money p_reward @ 
function sc.sc_biogbattle_shoprefresh(new_commodity, next_need_money) end

---@param result int32 @ 领取结果 
---@param draw_type int32 @ 类型(1: = role;2: = family) 
---@param draw_inds int32[] @ 当前已领取领奖id 
---@param reward p_reward @ 领取奖励 
function sc.sc_boss_draw(result, draw_type, draw_inds, reward) end

---@param result int32 @ 挑战结果 
---@param fight_struct p_fight_struct @ 战斗 
---@param harm uint64 @ 新伤害值 
---@param cd_time uint64 @ 冷却时间 
---@param per_harm double @ 伤害百分百 
---@param one_fight_reward p_reward @ 一次击杀的奖励 
function sc.sc_boss_fight(result, fight_struct, harm, cd_time, per_harm, one_fight_reward) end

---@param role_harm uint64 @ 玩家伤害 
---@param family_harm uint64 @ 玩家所在公会伤害 
function sc.sc_boss_harm(role_harm, family_harm) end

---@param state uint32 @ BOSS 状态 
---@param cd_time uint64 @ 挑战冷却时间 
---@param boss_info p_boss @ BOSS信息 
---@param role_draw_inds uint32[] @ 已领取玩家tops领奖id 
---@param family_draw_inds uint32[] @ 已领取公会tops领奖id 
---@param begin_time uint64 @ boss活动时间begin 
---@param end_time uint64 @ boss活动时间end 
---@param b_vip_sel int32 @ 是否选择了vip自动打 
---@param open_time uint64 @ 活动开启时间 
function sc.sc_boss_info(state, cd_time, boss_info, role_draw_inds, family_draw_inds, begin_time, end_time, b_vip_sel, open_time) end

---@param result int32 @ 退出结果 
function sc.sc_boss_quit(result) end

---@param result int32 @ 
function sc.sc_boss_selvip(result) end

---@param state uint32 @ BOSS 状态 
function sc.sc_boss_state_update(state) end

---@param result int32 @ 挑战结果 
---@param tops_type int32 @ 类型(1: = role;2: = family;3: = familyrole) 
---@param tops p_boss_top[] @ 排行榜数据 
function sc.sc_boss_tops(result, tops_type, tops) end

function sc.sc_box_info() end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励 
function sc.sc_box_open_treasurebox(result, reward) end

function sc.sc_box_select() end

---@param list_msg list_broadcast_msg[] @ 
function sc.sc_broadcast_msg(list_msg) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
function sc.sc_chaser_embattle(result, chaser_list) end

---@param result uint64 @ 结果 
---@param is_open bool @ 活动是否开启 
---@param is_teamup bool @ 是否组队 
---@param chaser_times uint64 @ 今日已挑战次数 
---@param mon_list p_ger_summary[] @ 怪物列表 
---@param chaser_list p_chaser[] @ 玩家列表 
---@param teamid uint64 @ 队伍ID 
---@param startsec uint64 @ 活动开始时间 
---@param endsec uint64 @ 活动结束时间 
function sc.sc_chaser_enter(result, is_open, is_teamup, chaser_times, mon_list, chaser_list, teamid, startsec, endsec) end

---@param result uint64 @结果 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_chaser_fight(result, fight_struct) end

---@param result uint64 @ 结果 
---@param iswin bool @ 战斗结果 
---@param chaser_times uint64 @ 今日已挑战次数 
---@param blood_percent uint64 @ 血量百分比 
function sc.sc_chaser_fight_back(result, iswin, chaser_times, blood_percent) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
function sc.sc_chaser_ger_exchange(result, chaser_list) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
function sc.sc_chaser_ger_movpos(result, chaser_list) end

---@param result uint64 @ 结果 
function sc.sc_chaser_invite(result) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
---@param teamid uint64 @ 队伍ID 
function sc.sc_chaser_join(result, chaser_list, teamid) end

---@param result uint64 @ 结果 
function sc.sc_chaser_leave(result) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
---@param teamid uint64 @ 队伍ID 
function sc.sc_chaser_new_teamup(result, chaser_list, teamid) end

---@param chaser_list p_chaser[] @ 玩家列表 
function sc.sc_chaser_notify(chaser_list) end

---@param result uint64 @ 结果 
---@param chaser_list p_chaser[] @ 玩家列表 
---@param teamid uint64 @ 队伍ID 
function sc.sc_chaser_quick_join(result, chaser_list, teamid) end

---@param result uint64 @结果 
function sc.sc_chicken_ask(result) end

---@param buf_id uint64 @分配到的初始bufID 
---@param player_list p_chicken_public[] @所有玩家列表 
---@param start_sec uint64 @对局开始的时间点 
function sc.sc_chicken_begin(buf_id, player_list, start_sec) end

---@param result uint64 @首胜箱子的状态 
---@param join_times uint64 @今天的参与次数 
---@param config_reward p_reward @配置的奖励内容 
---@param need_times uint64 @获取奖励需要的次数 
function sc.sc_chicken_box(result, join_times, config_reward, need_times) end

---@param result uint64 @领取结果 
---@param reward p_reward @领取的奖励内容 
function sc.sc_chicken_box_draw(result, reward) end

---@param result uint64 @操作结果 
---@param buf_id uint64 @buf的ID 
---@param attr p_attr @获得到的buf的具体值 
function sc.sc_chicken_eat_buf(result, buf_id, attr) end

---@param fort_id uint64 @据点ID 
---@param next_ref_sec uint64 @下次结算时间 
---@param play_list uint64[] @当前据点中的玩家RoleID列表，具体玩家信息从init消息中取 
---@param box_buf p_attr @盒子里的buf 
---@param buf_id uint64 @盒子里的bufID 
function sc.sc_chicken_fort(fort_id, next_ref_sec, play_list, box_buf, buf_id) end

---@param win_role_id uint64 @进攻方ID 
---@param lose_role_id uint64 @防守方的ID 
function sc.sc_chicken_fort_fight(win_role_id, lose_role_id) end

---@param killer string @杀死你的人 
---@param kill_num uint64 @自己的人头数 
---@param life_time uint64 @生存时间 
---@param rank uint64 @排名 
---@param base_reward p_reward @基础奖励 
---@param kill_reward p_reward @击杀奖励 
function sc.sc_chicken_fort_fight_lose(killer, kill_num, life_time, rank, base_reward, kill_reward) end

---@param tar_role_name string @对手名字 
---@param new_kill_num uint64 @新的人头数 
---@param add_attr p_attr @新增的buf 
---@param new_hp_percent uint64 @新的血量万分比 
function sc.sc_chicken_fort_fight_win(tar_role_name, new_kill_num, add_attr, new_hp_percent) end

---@param result uint64 @结果 
---@param my_summary p_chicken_summary @自己的基础信息 
---@param player_list p_chicken_player[] @所有玩家的当前状态，死人就已经从本局删掉了 
---@param player_info p_chicken_public[] @本局参与玩家列表的基础信息，只会发这一次，后面都是通过roleid关联 
---@param round uint64 @当前在第几个圈 
---@param next_round_sec uint64 @这个圈缩完的时间 
function sc.sc_chicken_init(result, my_summary, player_list, player_info, round, next_round_sec) end

---@param result uint64 @操作结果 
function sc.sc_chicken_leave(result) end

---@param result uint64 @操作结果 
function sc.sc_chicken_move(result) end

---@param player p_chicken_player @玩家状态 
function sc.sc_chicken_play_sync(player) end

---@param rank uint64 @我的排行 0就是未上榜 
---@param score uint64 @具体值 
---@param rank_list p_chicken_rank[] @排行榜具体内容 
function sc.sc_chicken_rank_list(rank, score, rank_list) end

---@param rank_reward_list p_chicken_rank_reward[] @排行榜的奖励内容 
function sc.sc_chicken_rank_reward(rank_reward_list) end

---@param replays p_chicken_replay[] @战报列表 
function sc.sc_chicken_replay(replays) end

---@param round uint64 @当前是第几轮 
---@param next_round_sec uint64 @当前圈缩完的时间 
function sc.sc_chicken_round(round, next_round_sec) end

---@param result uint64 @设置的结果 
---@param line p_lineup[] @设置的阵容 
function sc.sc_chicken_set_line(result, line) end

---@param result uint64 @操作结果 
---@param avg_sign_sec uint64 @平均匹配时间 
function sc.sc_chicken_sign(result, avg_sign_sec) end

---@param result uint64 @操作结果 
function sc.sc_chicken_sign_cancel(result) end

---@param role p_chicken_public @匹配到的玩家的信息 
function sc.sc_chicken_sign_sync(role) end

---@param state uint64 @当前活动状态 
---@param next_sec uint64 @下次活动状态切换时间 
function sc.sc_chicken_state(state, next_sec) end

---@param player p_chicken_summary @自己的状态 
function sc.sc_chicken_summary_sync(player) end

---@param result uint64 @ 请求结果 
---@param replay p_fight_struct @ 战斗录像 
function sc.sc_chicken_view_replay(result, replay) end

function sc.sc_chicken_wait_sync() end

---@param kill_num uint64 @击杀数 
---@param life_time uint64 @生存时间 
---@param base_reward p_reward @基础奖励 
---@param kill_reward p_reward @击杀奖励 
function sc.sc_chicken_win(kill_num, life_time, base_reward, kill_reward) end

---@param result uint64 @ 结果 
---@param chapterid uint64 @ 章节ID 
---@param buffid uint64 @ buffID 
---@param type uint64 @ 类型 
function sc.sc_choicefight_active(result, chapterid, buffid, type) end

---@param result uint64 @ 结果 
---@param boss_buy uint64 @ BOSS已购买次数 
function sc.sc_choicefight_buy(result, boss_buy) end

---@param result uint64 @ 结果 
---@param type uint64 @ 类型 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
---@param reward p_reward @ 掉落奖励预览 
function sc.sc_choicefight_fight_request(result, type, dungeonid, fight_struct, reward) end

---@param result uint64 @ 结果 
---@param hard_buy uint64 @ 副本已购买次数 
function sc.sc_choicefight_hard_buy(result, hard_buy) end

---@param is_normal_act bool @普通模式-是否已激活 
---@param curn_chapterid uint64 @---------当前章节ID 
---@param curn_buffid uint64 @---------当前buffID 
---@param normal_dungeonid_list uint64[] @---------完成关卡ID列表 
---@param choice_energy uint64 @---------当前拥有充能点 
---@param next_add uint64 @---------下次恢复充能点时间戳 
---@param hard_times uint64 @困难模式-已重置次数 
---@param is_hard_act bool @---------是否已激活 
---@param curh_chapterid uint64 @---------当前章节ID 
---@param curh_buffid uint64 @---------当前buffID 
---@param boss_fight uint64 @---------BOSS已挑战次数 
---@param boss_buy uint64 @---------BOSS已购买次数 
---@param hard_dungeonid_list uint64[] @---------完成关卡ID列表 
---@param hard_buy uint64 @---------副本购买次数 
function sc.sc_choicefight_info(is_normal_act, curn_chapterid, curn_buffid, normal_dungeonid_list, choice_energy, next_add, hard_times, is_hard_act, curh_chapterid, curh_buffid, boss_fight, boss_buy, hard_dungeonid_list, hard_buy) end

---@param type uint64 @ 类型 
---@param line p_lineup[] @ 当前阵容 
function sc.sc_choicefight_line(type, line) end

---@param choice_energy uint64 @ 充能点 
---@param next_add uint64 @ 下次恢复充能点时间戳 
function sc.sc_choicefight_recover(choice_energy, next_add) end

---@param result uint64 @ 请求结果 
---@param type uint64 @ 类型 
---@param dungeonid uint64 @ 关卡ID 
---@param is_win bool @ 是否胜利 
---@param is_pass bool @ 是否通关 
---@param reward p_reward @ 关卡奖励 
---@param pass_reward p_reward @ 通关奖励 
---@param extra_reward p_reward @ 额外奖励 
function sc.sc_choicefight_report(result, type, dungeonid, is_win, is_pass, reward, pass_reward, extra_reward) end

---@param result uint64 @ 结果 
---@param type uint64 @ 类型 
function sc.sc_choicefight_reset(result, type) end

---@param result uint64 @ 结果 
---@param type uint64 @ 类型 
---@param line p_lineup[] @ 当前阵容 
function sc.sc_choicefight_set_line(result, type, line) end

---@param cfglist p_config[] @ 配置列表 
function sc.sc_config(cfglist) end

function sc.sc_digitalcore_activation() end

---@param ger_coreinfo_lists p_ger_core_info[] @开启核心的列表 
---@param b_replace_consume int32 @是否勾选替代消耗,1:是,任意其他值不是 
function sc.sc_digitalcore_info(ger_coreinfo_lists, b_replace_consume) end

---@param b_replace_consume int32 @是否勾选替代消耗,1:是,任意其他值不是 
function sc.sc_digitalcore_selreplace(b_replace_consume) end

function sc.sc_digitalcore_tupo() end

---@param result uint64 @ 结果 
---@param diglist p_digivice[] @ 数码机列表 
---@param sumattr p_attr @ 全体数码机总的强化&洗炼属性 
function sc.sc_digivice_info(result, diglist, sumattr) end

---@param newlist p_digivice[] @ 新增列表 
---@param updatelist p_digivice[] @ 更新列表 
---@param deletelist p_digivice[] @ 删除列表 
---@param sumattr p_attr @ 全体数码机总的强化&洗炼属性 
function sc.sc_digivice_notify(newlist, updatelist, deletelist, sumattr) end

---@param result uint64 @ 结果 
function sc.sc_digivice_refine(result) end

---@param result uint64 @ 结果 
function sc.sc_digivice_reinforce(result) end

---@param result uint64 @ 结果 
function sc.sc_digivice_replace(result) end

---@param result uint64 @ 结果 
function sc.sc_digivice_replace_giveup(result) end

---@param equiplist p_equip[] @ 装备列表 
function sc.sc_equip(equiplist) end

---@param result uint64 @ 进阶结果 
function sc.sc_equip_eat(result) end

---@param newlist p_equip[] @ 新增列表 
---@param updatelist p_equip[] @ 更新列表 
---@param deletelist p_equip[] @ 删除列表 
function sc.sc_equip_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 强化结果 
function sc.sc_equip_uplevel(result) end

---@param result uint64 @ 进阶结果 
function sc.sc_equip_uprank(result) end

---@param result uint64 @ 进阶结果 
function sc.sc_equip_upstar(result) end

---@param boxpos uint64 @宝箱位置 
---@param boxtime uint64 @可以开启的时间 
---@param quicknum uint64 @解锁时的快速开启次数 
function sc.sc_extreme_battlebox_unlock(boxpos, boxtime, quicknum) end

---@param reward p_reward @奖励 
function sc.sc_extreme_boxopen(reward) end

---@param result uint64 @是否开启 1：开启成功 2:等级不够 3:开服时间不够，4：休赛时间 5:活动还未开始 6:主服挂了 7:配置错误 
---@param curscore uint64 @当前积分 
---@param division uint64 @段位 eg：最强王者 
---@param seasonbegin uint64 @开始时间 
---@param boxbattle p_extreme_boxbattle[] @战斗宝箱(胜负为不同的宝箱) 
---@param boxfree p_extreme_boxfree @免费箱子 
---@param boxwin p_extreme_boxwin @(战功宝箱信息,即累积胜利场次的箱子) 
---@param standuplist p_extreme_standup[] @当前阵容列表 
---@param quickopennum uint64 @快速开启次数 
---@param challengetm string @可挑战时间段 
function sc.sc_extreme_info(result, curscore, division, seasonbegin, boxbattle, boxfree, boxwin, standuplist, quickopennum, challengetm) end

---@param result uint64 @结果 
---@param fight_structs p_fight_list[] @战斗结构 
---@param fight_result p_extreme_record @匹配成功后返回的战报，战斗数据及结果全在里面 
function sc.sc_extreme_match(result, fight_structs, fight_result) end

---@param result uint64 @1成功 2失败 3:赛季结束 
function sc.sc_extreme_matchcancel(result) end

---@param result uint64 @1成功 2失败 
---@param records p_extreme_record[] @战报列表 
function sc.sc_extreme_my_record(result, records) end

---@param boxid uint64 @id 0：表示该位置为空 
---@param boxtype uint64 @类型 1:失败宝箱， 2：胜利宝箱 
---@param boxpos uint64 @位置 
---@param boxtime uint64 @宝箱解锁后的可领取时间 unix_time，0表示未解锁 
function sc.sc_extreme_notify_boxbattle(boxid, boxtype, boxpos, boxtime) end

function sc.sc_extreme_notify_boxwin() end

function sc.sc_extreme_notify_freebox() end

---@param quickopennum uint64 @快速开启次数 
---@param curscore uint64 @当前积分 
---@param division uint64 @段位 eg：最强王者 
---@param seasonbegin uint64 @开始时间 
---@param result uint64 @是否开启 1：开启成功 2:等级不够 3:开服时间不够，4：休赛时间 5:活动还未开始 
---@param cleanstandup uint64 @是否将阵型清空 1：清空 
function sc.sc_extreme_notify_info(quickopennum, curscore, division, seasonbegin, result, cleanstandup) end

---@param reward p_reward @奖励 
function sc.sc_extreme_quickopen(reward) end

---@param result uint64 @1成功 2失败 
---@param rankinfo p_extreme_rank[] @排名信息 
---@param ownrank p_extreme_rank[] @自己的排行信息 若为空表，则未找到自己的排行 
function sc.sc_extreme_rank(result, rankinfo, ownrank) end

---@param result uint64 @1成功，2失败(该战报已过期) 
---@param fight_structs p_fight_list[] @战斗结构 
---@param fight_result p_extreme_record @战斗结算 
function sc.sc_extreme_replayview(result, fight_structs, fight_result) end

---@param standuplist p_extreme_standup[] @布阵 
function sc.sc_extreme_standup(standuplist) end

---@param result uint64 @1成功 2失败 
---@param records p_extreme_record[] @战报列表 
function sc.sc_extreme_total_record(result, records) end

---@param activepoints uint64 @ 最新活跃度 
function sc.sc_family_activepoints_notify(activepoints) end

---@param familyinfo p_family @ 公会信息 
---@param members p_fmember_public[] @ 成员列表 
function sc.sc_family_agreed_notify(familyinfo, members) end

---@param result uint64 @ 请求结果 
---@param applylist p_family_apply[] @ 所有申请列表 
function sc.sc_family_apply_list(result, applylist) end

---@param newapply p_family_apply @ 新申请 
function sc.sc_family_apply_notify(newapply) end

---@param result uint64 @ 撤回结果 
function sc.sc_family_cancel_apply(result) end

---@param roleid uint64 @ 申请人ID 
function sc.sc_family_cancel_notify(roleid) end

---@param newlv uint64 @ 新等级 
---@param newcons uint64 @ 新建设度 
---@param donate_times uint64 @ 新的捐献次数 
function sc.sc_family_cons_notify(newlv, newcons, donate_times) end

---@param result uint64 @ 创建结果 
---@param familyinfo p_family[] @ 公会信息 
---@param members p_fmember_public[] @ 成员列表 
function sc.sc_family_create(result, familyinfo, members) end

---@param result uint64 @ 解散结果 
function sc.sc_family_dissolve(result) end

---@param familyid uint64 @ 公会ID 
function sc.sc_family_dissolve_notify(familyid) end

---@param result uint64 @ 捐献结果 
---@param type uint64 @ 捐献类型 
---@param reward p_reward @ 获得奖励 
function sc.sc_family_donate(result, type, reward) end

---@param result uint64 @ 编辑结果 
function sc.sc_family_edit(result) end

---@param notice string @ 公会公告 
---@param whatup string @ 公会宣言 
function sc.sc_family_edit_notify(notice, whatup) end

---@param result uint64 @ 处理结果 
---@param option uint64 @ 具体选项 
function sc.sc_family_handle_apply(result, option) end

---@param roleid uint64 @ 申请人ID 
function sc.sc_family_handle_notify(roleid) end

---@param result uint64 @ 请求结果 
---@param deadline uint64 @ 结束倒计时(0表示没有弹劾) 
---@param vote_num uint64 @ 投票人数 
---@param is_voted uint64 @ 自己是否参与投票(1 : = 参与; 2 : = 未参与) 
function sc.sc_family_impeach_info(result, deadline, vote_num, is_voted) end

---@param deadline uint64 @ 结束倒计时(0表示没有弹劾) 
---@param vote_num uint64 @ 投票人数 
---@param is_voted uint64 @ 自己是否参与投票(1 : = 参与; 2 : = 未参与) 
function sc.sc_family_impeach_notify(deadline, vote_num, is_voted) end

---@param result uint64 @ 请求结果 
function sc.sc_family_impeach_start(result) end

---@param oldchairid uint64 @ 老会长ID 
---@param newchairid uint64 @ 新会长ID 
function sc.sc_family_impeach_success(oldchairid, newchairid) end

---@param result uint64 @ 请求结果 
function sc.sc_family_impeach_vote(result) end

---@param result uint64 @ 请求结果 
---@param familyinfo p_family[] @ 公会信息 
---@param members p_fmember_public[] @ 成员列表 
---@param lastquit uint64 @ 最后一次退出公会的时间 
---@param applylist uint64[] @ 已申请公会ID列表 
---@param donate_times uint64 @ 今日已捐献次数 
function sc.sc_family_info(result, familyinfo, members, lastquit, applylist, donate_times) end

---@param roleid uint64 @ 申请人ID 
function sc.sc_family_join_notify(roleid) end

---@param result uint64 @ 踢人结果 
function sc.sc_family_kick(result) end

function sc.sc_family_kicked_notify() end

---@param familylist p_family_summary[] @ 公会信息列表 
function sc.sc_family_list(familylist) end

---@param addloglist p_flog[] @ 新增的日志列表 
function sc.sc_family_log_notify(addloglist) end

---@param result uint64 @ 管理结果 
function sc.sc_family_manage(result) end

---@param option uint64 @ 选项 
---@param roleid uint64 @ 被操作者ID 
---@param ctrlid uint64 @ 操作者ID 
function sc.sc_family_manage_notify(option, roleid, ctrlid) end

---@param result uint64 @ 请求结果 
---@param chatlist p_family_msg[] @ 普通消息 
---@param sysmlist p_family_msg[] @ 系统消息 
function sc.sc_family_msg_list(result, chatlist, sysmlist) end

---@param chatlist p_family_msg[] @ 新增消息 
function sc.sc_family_msg_notify(chatlist) end

---@param result uint64 @操作返回码 
---@param reward p_reward @红包内的奖励 
function sc.sc_family_packet_drawfamily(result, reward) end

---@param result uint64 @操作结果 
---@param reward p_reward @获得的奖励 
function sc.sc_family_packet_drawrole(result, reward) end

---@param family_packet p_family_packet[] @联盟每天的免费红包 
---@param sent_pakcet p_family_sent_packet[] @自己已经发送的公会红包信息 
---@param role_send_packet p_family_role_packet[] @公会玩家发送出来的红包 
---@param role_get_packet p_family_get_packet[] @玩家自己抢到的红包信息 
function sc.sc_family_packet_info(family_packet, sent_pakcet, role_send_packet, role_get_packet) end

---@param family_packet p_family_packet[] @联盟每天的免费红包 
---@param sent_pakcet p_family_sent_packet[] @自己已经发送的公会红包信息 
---@param role_send_packet p_family_role_packet[] @公会玩家发送出来的红包 
---@param role_get_packet p_family_get_packet[] @玩家自己抢到的红包信息 
function sc.sc_family_packet_notify(family_packet, sent_pakcet, role_send_packet, role_get_packet) end

---@param ranklist p_family_packet_rank[] @排行榜信息 
function sc.sc_family_packet_ranklist(ranklist) end

---@param result uint64 @操作结果 
function sc.sc_family_quick_join(result) end

---@param result uint64 @ 退出结果 
function sc.sc_family_quit(result) end

---@param result uint64 @操作结果 
---@param lastrecruitsec uint64 @如果成功了就是成功的时间点，失败就是上次的时间点 
function sc.sc_family_recruit(result, lastrecruitsec) end

---@param familyid uint64 @ 公会ID 
function sc.sc_family_refused_notify(familyid) end

---@param familylist p_family_summary[] @ 公会信息列表 
function sc.sc_family_search(familylist) end

---@param result uint64 @操作结果 
---@param reward p_reward @发送后的返利内容 
function sc.sc_family_sendpacket(result, reward) end

---@param result uint64 @ 请求结果 
function sc.sc_family_send_apply(result) end

---@param result uint64 @操作结果 
function sc.sc_family_send_member_mail(result) end

---@param result uint64 @ 发送结果 
function sc.sc_family_send_msg(result) end

---@param result uint64 @操作结果 
---@param joinneedlv uint64 @ 加入需要的战队等级 
---@param join_needagree bool @ 加入是否需要审批 
function sc.sc_family_setarg(result, joinneedlv, join_needagree) end

---@param changelist p_ftech[] @ 改变的科技列表 
---@param techpoints uint64 @ 最新的科技点数 
function sc.sc_family_tech_notify(changelist, techpoints) end

---@param familyinfo p_family @ 公会新信息 
function sc.sc_family_update_notify(familyinfo) end

---@param result uint64 @ 升级结果 
function sc.sc_family_upgrade_techlv(result) end

---@param result uint64 @操作结果 
---@param tar p_fmember_public @目标信息 
function sc.sc_family_view_other(result, tar) end

---@param result uint64 @操作结果 
---@param coin uint64 @金币获得 
---@param gold uint64 @钻石获得 
---@param card uint64 @卡牌获得 
function sc.sc_fbird_draw(result, coin, gold, card) end

---@param leftTimes uint64 @剩余的挑战次数 
---@param todaybest uint64 @今日的最佳成绩 
---@param rolebest uint64 @历史最佳战绩 
---@param coin uint64 @金币获得 
---@param gold uint64 @钻石获得 
---@param card uint64 @卡牌获得 
function sc.sc_fbird_info(leftTimes, todaybest, rolebest, coin, gold, card) end

---@param ranklist p_fbird_rank[] @排行榜 
function sc.sc_fbird_rank(ranklist) end

---@param result uint64 @ 请求结果 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
---@param curatkroleid uint64 @当前正在攻打bos角色ID 
---@param lastatktime uint64 @上次攻击bos的时间 
function sc.sc_fboss_atk(result, dungeonid, fight_struct, curatkroleid, lastatktime) end

---@param result uint64 @操作结果 
---@param reward p_reward @奖励内容 
---@param dungeonlist uint64[] @已经领取奖励的关卡列表 
function sc.sc_fboss_draw(result, reward, dungeonlist) end

---@param result uint64 @处理结果 
---@param nowhp_percent uint64 @当前剩余血量万分比 
---@param ranklist p_fboss3rank[] @该关卡的通关排行 
---@param lastatkroleid uint64 @上次攻击bos的角色ID 
---@param lastatktime uint64 @上次攻击bos的时间 
function sc.sc_fboss_dungeon_detial(result, nowhp_percent, ranklist, lastatkroleid, lastatktime) end

---@param result uint64 @请求是否成功 
---@param curdungeonid uint64 @当前关卡ID 
---@param nowhp_percent uint64 @当前血量万分比 
---@param gerlist p_lineup[] @选中的阵容 
---@param addattr uint64 @增加的属性加成万分比 
---@param leftatktimes uint64 @剩余的挑战次数 
---@param drawdungeonids uint64[] @已经领取通关奖励的关卡 
function sc.sc_fboss_info(result, curdungeonid, nowhp_percent, gerlist, addattr, leftatktimes, drawdungeonids) end

---@param result uint64 @操作结果 
---@param ranklist p_fboss_passrank[] @排行榜 
function sc.sc_fboss_passrank(result, ranklist) end

---@param result uint64 @操作结果 
---@param ranklist p_fboss_rank[] @排行榜 
function sc.sc_fboss_rank(result, ranklist) end

---@param result uint64 @操作结果 
---@param dungeonid uint64 @关卡ID 
---@param attacker_win bool @是否获胜 
---@param reward p_reward @获得的奖励 
---@param harm_percent sint64 @造成的伤害的万分比，可能是负数 
---@param harm_value sint64 @造成的伤害，可能是负数 
function sc.sc_fboss_report(result, dungeonid, attacker_win, reward, harm_percent, harm_value) end

---@param result uint64 @操作结果 
---@param linelist p_lineup[] @选择使用的武将列表 
function sc.sc_fboss_setline(result, linelist) end

---@param curdungeonid uint64 @当前关卡ID 
---@param nowhp_percent uint64 @当前血量万分比 
function sc.sc_fboss_sync(curdungeonid, nowhp_percent) end

---@param selfleftatttimes uint64 @自己剩余攻击次数 
---@param selfstars uint64 @自己得星 
---@param fstars uint64 @本公会得星 
---@param enemy_fstars uint64 @敌方公会得星 
---@param warrior_list p_warrior_info[] @英雄列表 
---@param allatttimes uint64 @工会总的攻击次数 
---@param fullsets int32 @有多少玩家上满三套阵容 
function sc.sc_fcross_battlefield(selfleftatttimes, selfstars, fstars, enemy_fstars, warrior_list, allatttimes, fullsets) end

function sc.sc_fcross_bcfight() end

function sc.sc_fcross_challtimes() end

function sc.sc_fcross_definfo() end

function sc.sc_fcross_disposal() end

function sc.sc_fcross_enrol() end

---@param fight_replay_list p_fight_replay_info[] @战报 
function sc.sc_fcross_familyreplay(fight_replay_list) end

---@param fight_struct_info_lists p_fight_struct_info[] @ 战斗 
---@param fight_replay p_fight_replay_info @战报 
function sc.sc_fcross_fight(fight_struct_info_lists, fight_replay) end

---@param fight_replay_list p_fight_replay_info[] @战报 
function sc.sc_fcross_fightreplay(fight_replay_list) end

function sc.sc_fcross_getstars() end

---@param stage int32 @当前阶段 
---@param family family_info @我方公会 
---@param efamily family_info @敌方工会 
---@param inspire uint64 @鼓舞次数 
---@param allinspire uint64 @鼓舞总次数 
---@param goldadd uint64 @金币加成 
---@param diaadd uint64 @钻石加成 
---@param countdown uint64 @倒计时 
function sc.sc_fcross_info(stage, family, efamily, inspire, allinspire, goldadd, diaadd, countdown) end

function sc.sc_fcross_inspire() end

function sc.sc_fcross_inspireinfo() end

function sc.sc_fcross_markenemy() end

function sc.sc_fcross_notify_enrol() end

function sc.sc_fcross_notify_stage() end

function sc.sc_fcross_open_bfield() end

---@param fight_struct_info_lists p_fight_struct_info[] @ 战斗 
---@param fight_replay p_fight_replay_info @战报 
function sc.sc_fcross_replay(fight_struct_info_lists, fight_replay) end

function sc.sc_fcross_scorerank() end

function sc.sc_fcross_team() end

---@param family_win_count uint64 @公会累计单次活动内获胜次数 
---@param end_sec uint64 @此次活动结束时间 
function sc.sc_fextreme_box(family_win_count, end_sec) end

---@param result uint64 @ 攻击结果 
---@param addstar uint64 @ 增加星星数 
---@param histlist p_ffight_hist[] @ 战报(带录像) 
function sc.sc_ffight_attack(result, addstar, histlist) end

---@param state uint64 @ 状态 
---@param etime uint64 @ 状态结束时间 
---@param isign uint64 @ (1: = 已报名;2: = 未报名) 
---@param self p_ffight_family[] @ 我方公会详情 
---@param enemy p_ffight_family[] @ 敌方公会详情 
function sc.sc_ffight_detail(state, etime, isign, self, enemy) end

---@param histinfo p_ffight_hist[] @ 具体战报 
function sc.sc_ffight_hist_with_replay(histinfo) end

---@param type uint64 @ (1: = 我方;2: = 敌方) 
---@param updatelist p_ffight_member[] @ 更新成员列表 
function sc.sc_ffight_member_update(type, updatelist) end

---@param state uint64 @ 状态 
function sc.sc_ffight_preview(state) end

---@param self p_ffight_family[] @ 我方公会详情 
---@param enemy p_ffight_family[] @ 敌方公会详情 
function sc.sc_ffight_prev_hist_list(self, enemy) end

---@param result uint64 @ 报名结果 
function sc.sc_ffight_signup(result) end

---@param toplist p_ffight_top[] @ 排行榜单 
function sc.sc_ffight_tops(toplist) end

---@param result uint32 @结果 
---@param unstones p_field_stone[] @卸下 
function sc.sc_field_allun(result, unstones) end

---@param result uint32 @更换结果 
---@param euqip_stone p_field_stone @ 
---@param unstone p_field_stone @ 
function sc.sc_field_change(result, euqip_stone, unstone) end

---@param result uint32 @分解结果 
---@param reward p_reward @分解物品 
---@param stones p_field_stone[] @分解后的领域石列表 
function sc.sc_field_decompose(result, reward, stones) end

---@param result uint32 @更换结果 
---@param stone1 p_field_stone @ 
---@param stone2 p_field_stone @ 
function sc.sc_field_equip_change(result, stone1, stone2) end

---@param stones p_field_stone[] @ 
function sc.sc_field_info(stones) end

---@param result uint32 @更换结果 
---@param stones p_field_stone[] @穿上 
---@param unstones p_field_stone[] @卸下 
function sc.sc_field_set(result, stones, unstones) end

---@param result uint32 @升级结果 
---@param stones p_field_stone[] @升级后的石头 
function sc.sc_field_uplv(result, stones) end

---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_fight_demo(fight_struct) end

---@param dellist uint64[] @ 删除成员ID列表 
function sc.sc_fmember_del_notify(dellist) end

---@param newlist p_fmember_public[] @ 新增成员列表 
function sc.sc_fmember_new_notify(newlist) end

---@param roleid uint64 @ 角色ID 
---@param lastlogout uint64 @ 新状态 
function sc.sc_fmember_state_trans_notify(roleid, lastlogout) end

---@param updatelist p_fmember_public[] @ 更新成员列表 
function sc.sc_fmember_update_notify(updatelist) end

---@param add_list p_friend_frd[] @ 新增列表 
function sc.sc_friend_add_notify(add_list) end

---@param result uint64 @ 挑战结果 
function sc.sc_friend_challenge(result) end

---@param result uint64 @ 删除结果 
function sc.sc_friend_delete(result) end

---@param del_list uint64[] @ 删除列表 
function sc.sc_friend_del_notify(del_list) end

---@param result uint64 @ 领取结果 
function sc.sc_friend_draw_energy(result) end

---@param result uint64 @ 领取结果 
---@param msg_uid_list uint64[] @ 领取回赠的消息UID列表 
function sc.sc_friend_draw_energy_and_return_onekey(result, msg_uid_list) end

---@param result uint64 @ 响应结果 
function sc.sc_friend_handle_apply(result) end

---@param friend_list p_friend_frd[] @ 好友列表 
---@param send_energy_times uint64 @ 赠送体力次数 
---@param draw_energy_times uint64 @ 领取体力次数 
function sc.sc_friend_info(friend_list, send_energy_times, draw_energy_times) end

---@param msg_list p_friend_msg[] @ 消息列表(未读) 
function sc.sc_friend_msg(msg_list) end

---@param stranger_list p_friend_stranger[] @ 玩家列表 
function sc.sc_friend_search(stranger_list) end

---@param result uint64 @ 申请结果 
function sc.sc_friend_send_apply(result) end

---@param result uint64 @ 赠送结果 
function sc.sc_friend_send_energy(result) end

---@param succid_list uint64[] @ 成功ID列表 
function sc.sc_friend_send_energy_onekey(succid_list) end

---@param result uint64 @ 发送结果 
function sc.sc_friend_send_msg(result) end

---@param roleid uint64 @ 角色ID 
---@param lastlogout uint64 @ 新状态 
function sc.sc_friend_state_trans_notify(roleid, lastlogout) end

---@param result uint64 @操作结果 
---@param tarroleid uint64 @目标角色ID 
---@param new_desk p_fshool_desk[] @新的桌子信息 
---@param reward p_reward @加速成功后的奖励 
function sc.sc_fschool_accelerate(result, tarroleid, new_desk, reward) end

---@param result uint64 @操作结果 
---@param tar_rolename string @新的桌子信息 
function sc.sc_fschool_accelerate_auto(result, tar_rolename) end

---@param acceleratetime uint64 @已经使用的加速次数 
---@param desks p_fshool_desk[] @课桌，所有解锁的桌子都会回 
---@param rolenames string[] @给你加速的人的名字 
---@param cansendroles uint64[] @可被赠送的角色列表 
function sc.sc_fschool_info(acceleratetime, desks, rolenames, cansendroles) end

---@param result uint64 @操作结果 
---@param new_desk p_fshool_desk @新的桌子信息 
function sc.sc_fschool_setger(result, new_desk) end

---@param result uint64 @操作结果 
---@param acceleratedtime uint64 @被加速次数 
---@param desks p_fshool_desk[] @课桌，所有解锁的桌子都会回 
function sc.sc_fschool_viewother(result, acceleratedtime, desks) end

function sc.sc_fterritory_fhangup_active() end

---@param reward p_reward @ 奖励 
function sc.sc_fterritory_fhangup_taskdraw(reward) end

---@param newlist p_hanguptask[] @ 新增列表 
---@param updatelist p_hanguptask[] @ 更新列表 
---@param deletelist p_hanguptask[] @ 删除列表 
function sc.sc_fterritory_fhangup_task_notify(newlist, updatelist, deletelist) end

function sc.sc_fterritory_htask() end

---@param lv uint64 @ 公会建筑等级 
---@param tasklist p_task[] @ 公会建筑任务列表 
---@param shop p_shop @ 公会建筑商店 
---@param pmansion p_pmansion[] @ 个人建筑列表 
---@param switchlist p_switch[] @ 申请列表 
---@param ftmoney p_reward @ 商店money 
---@param bufflist p_fter_buff[] @ 加成buff列表 
---@param hanguptasklist p_hanguptask[] @ 公会挂机任务列表 
function sc.sc_fterritory_info(lv, tasklist, shop, pmansion, switchlist, ftmoney, bufflist, hanguptasklist) end

function sc.sc_fterritory_shopbuy() end

function sc.sc_fterritory_switch() end

function sc.sc_fterritory_switchback() end

---@param reward p_reward @ 奖励 
function sc.sc_fterritory_taskdraw(reward) end

---@param lv uint64 @ 新等级 
function sc.sc_fterritory_uplevel(lv) end

---@param newlist p_fter_buff[] @ 新增列表 
---@param updatelist p_fter_buff[] @ 更新列表 
---@param deletelist p_fter_buff[] @ 删除列表 
function sc.sc_fter_buff_notify(newlist, updatelist, deletelist) end

---@param pmansion p_pmansion[] @ 个人建筑列表 
function sc.sc_fter_pmansion_notify(pmansion) end

---@param newlist p_switch[] @ 新增列表 
---@param updatelist p_switch[] @ 更新列表 
---@param deletelist p_switch[] @ 删除列表 
function sc.sc_fter_switch_notify(newlist, updatelist, deletelist) end

---@param newlist p_task[] @ 新增列表 
---@param updatelist p_task[] @ 更新列表 
---@param deletelist p_task[] @ 删除列表 
function sc.sc_fter_task_notify(newlist, updatelist, deletelist) end

---@param result uint64 @操作后的结果 
---@param reward p_reward @奖励 
function sc.sc_ftiger_draw(result, reward) end

---@param freetimes uint64 @已经使用的免费刷新次数 
---@param jointimes uint64 @参与次数 
---@param paytimes uint64 @付费刷新次数 
---@param tiger p_tiger @当前老虎机的内容，如果没有这个字段说明没有在祈福状态 
function sc.sc_ftiger_info(freetimes, jointimes, paytimes, tiger) end

---@param result uint64 @操作结果 
---@param tiger p_tiger @刷新成功后的新的老虎机信息 
function sc.sc_ftiger_play(result, tiger) end

---@param ranklist p_tiger_rank[] @排行榜信息 
function sc.sc_ftiger_rank(ranklist) end

---@param result uint64 @操作结果 
---@param tiger p_tiger @刷新后的老虎机信息 
function sc.sc_ftiger_refresh(result, tiger) end

---@param ftmoney p_reward @ 领地商店money 
function sc.sc_ftshop_notify(ftmoney) end

function sc.sc_gather_enhance() end

function sc.sc_gather_enhance_reset() end

---@param result uint64 @操作结果 
---@param harm_val uint64 @造成的伤害 
---@param is_win bool @是否获胜 
function sc.sc_gather_fight_report(result, harm_val, is_win) end

---@param result uint64 @操作结果 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_gather_fight_request(result, fight_struct) end

---@param gatherlist p_gather[] @ 激活合体列表 
---@param npclist p_npc[] @ 激活材料npc列表 
---@param dun_lv uint64 @ 关卡当前等级，有了就只能直接挑战没才能选 
---@param today_harm uint64 @ 今天的伤害 
---@param is_complete bool @ 今天是否已经完成副本 
---@param max_lv uint64 @ 当前可选择的关卡最大等级 
---@param dun_id uint64 @ 关卡ID 
function sc.sc_gather_info(gatherlist, npclist, dun_lv, today_harm, is_complete, max_lv, dun_id) end

---@param newlist p_gather[] @ 新增列表 
---@param updatelist p_gather[] @ 更新列表 
---@param deletelist p_gather[] @ 删除列表 
function sc.sc_gather_notify(newlist, updatelist, deletelist) end

---@param newlist p_npc[] @ 新增列表 
---@param updatelist p_npc[] @ 更新列表 
---@param deletelist p_npc[] @ 删除列表 
function sc.sc_gather_npc_notify(newlist, updatelist, deletelist) end

function sc.sc_gather_npc_through() end

function sc.sc_gather_npc_unlock() end

function sc.sc_gather_npc_uplevel() end

---@param result uint64 @操作结果 
---@param new_card p_ger_card @新的宝贝的卡槽信息 
function sc.sc_gercard_chose(result, new_card) end

---@param result uint64 @操作结果 
function sc.sc_gercard_clean(result) end

---@param card_info p_ger_card[] @宝贝的卡槽信息 
function sc.sc_gercard_info(card_info) end

---@param last_wash p_last_wash @上次洗练结果 
function sc.sc_gercard_last(last_wash) end

---@param result uint64 @操作结果 
---@param new_card p_ger_card @新的宝贝的卡槽信息 
function sc.sc_gercard_unlock(result, new_card) end

---@param result uint64 @操作结果 
---@param card_list p_ger_card_detail[] @具体的洗练结果 
function sc.sc_gercard_wash(result, card_list) end

---@param result uint64 @操作结果 
function sc.sc_ger_clothe(result) end

---@param all_line p_ger_line_list[] @所有的已经使用的阵容列表 
function sc.sc_ger_line_list(all_line) end

---@param type uint64 @ 更新的是攻击阵容还是防守阵容 1 -> 攻击阵容 2 -> 防守阵容 
---@param lineup p_lineup[] @ 最新的阵容，本身也很短，所以全部发送 
function sc.sc_ger_line_notify(type, lineup) end

---@param result uint64 @操作结果 
---@param new_line p_ger_line_list @解锁后的空阵容，只有一个用来客户端初始化数据 
function sc.sc_ger_line_unlock(result, new_line) end

---@param gerlist p_ger[] @ 所有的精灵信息 
---@param atklist p_lineup[] @ 攻击阵容 
---@param deflist p_lineup[] @ 防守阵容 
function sc.sc_ger_list(gerlist, atklist, deflist) end

---@param result uint64 @ 移位结果 
function sc.sc_ger_movpos(result) end

---@param newlist p_ger[] @ 新增列表 
---@param updatelist p_ger[] @ 更新列表 
---@param deletelist p_ger[] @ 删除列表 
function sc.sc_ger_notify(newlist, updatelist, deletelist) end

---@param result uint64 @操作结果 
function sc.sc_ger_piece_exchange(result) end

---@param result uint64 @操作结果 
---@param new_line p_ger_line_list @只有一个用来客户端初始化数据 
function sc.sc_ger_set_line(result, new_line) end

---@param result uint64 @ 选择的结果 
function sc.sc_ger_stage_chose(result) end

---@param result uint64 @ 进化阶段升阶结果 
function sc.sc_ger_stage_uprank(result) end

---@param result uint64 @ 上阵结果 
function sc.sc_ger_standup(result) end

---@param result uint64 @ 操作结果 
---@param ger p_ger @ 如果成功了这里就是这个新宝贝的信息 
function sc.sc_ger_unlock(result, ger) end

---@param result uint64 @ 升级结果 
function sc.sc_ger_uplevel(result) end

---@param result uint64 @ 进阶结果 
function sc.sc_ger_uprank(result) end

---@param result uint64 @ 技能升级结果 
function sc.sc_ger_upskill(result) end

---@param result uint64 @ 合成结果 
function sc.sc_ger_upstar(result) end

---@param result int32 @ 结果 
---@param reward p_reward @ 奖励 
function sc.sc_ghandrwd_login_draw(result, reward) end

---@param start_time int32 @ 活动开始时间 
---@param end_time int32 @ 活动结束时间 
---@param login_days int32 @ 累计登录天数 
---@param drawlist int32[] @ 已领取奖励的天数列表 
---@param desc string @ 活动描述 
---@param title string @ 活动名称 
---@param reward p_view[] @ 奖励预览 
---@param openlv uint32 @ vip等级限制 
---@param openviplv uint32 @ 角色等级限制 
function sc.sc_ghandrwd_login_info(start_time, end_time, login_days, drawlist, desc, title, reward, openlv, openviplv) end

---@param login_days int32 @ 累计登录天数 
---@param new_drawlist int32[] @ 新增的已领奖天数 
function sc.sc_ghandrwd_login_update(login_days, new_drawlist) end

---@param result int32 @ 请求结果 
---@param reward p_reward @ 奖励信息 
function sc.sc_gift_draw(result, reward) end

---@param result uint64 @ 结果 
function sc.sc_gm_test(result) end

---@param result uint64 @ 领取结果 
---@param reward p_reward[] @ 奖励内容 
function sc.sc_guide_draw(result, reward) end

---@param guidelist p_guide[] @ 任务列表 
function sc.sc_guide_list(guidelist) end

---@param newlist p_guide[] @ 新增列表 
---@param updatelist p_guide[] @ 更新列表 
---@param deletelist p_guide[] @ 删除列表 
function sc.sc_guide_notify(newlist, updatelist, deletelist) end

---@param mix_1 uint64[] @ 混淆1 
---@param arg_a uint64 @ 系数a 
---@param mix_2 uint64[] @ 混淆2 
---@param arg_b uint64 @ 常数b 
---@param mix_3 uint64[] @ 混淆3 
---@param arg_m uint64 @ 模数m 
---@param mix_4 uint64[] @ 混淆4 
---@param arg_x uint64 @ 初始x 
---@param mix_5 uint64[] @ 混淆5 
function sc.sc_handshake(mix_1, arg_a, mix_2, arg_b, mix_3, arg_m, mix_4, arg_x, mix_5) end

---@param unixtime uint64 @ 时间戳 
function sc.sc_heart(unixtime) end

---@param result uint64 @ 领取结果 
---@param newact p_activity[] @ 新信息 
function sc.sc_hegemony_activity_draw(result, newact) end

---@param reward p_reward @具体领到的奖励内容 
function sc.sc_hegemony_activity_drawend(reward) end

---@param endtime uint64 @开服活动的结束时间,如果是0则表示没开放,下面的字段也不会有 
---@param activity p_activity[] @当前活动内容 
---@param drawtime uint64 @什么时候可以领取结算奖励 
---@param reward p_reward @结算满额度奖励 
---@param isdraw bool @当前是否已经领取过结算奖励 
function sc.sc_hegemony_activity_info(endtime, activity, drawtime, reward, isdraw) end

---@param activity p_activity[] @改变了的活动内容 
function sc.sc_hegemony_activity_notify(activity) end

---@param result uint64 @ 请求结果 
---@param detail p_hegemony_struct @ 详细信息 
function sc.sc_hegemony_betting_detail(result, detail) end

---@param betting_state uint64 @ 押注状态 
---@param candidates p_hegemony_struct[] @ 候选列表 
function sc.sc_hegemony_betting_info(betting_state, candidates) end

---@param result uint64 @ 请求结果 
function sc.sc_hegemony_betting_request(result) end

---@param result uint64 @ 领奖结果 
---@param reward p_reward @ 奖励 
function sc.sc_hegemony_draw_reward(result, reward) end

---@param result uint64 @ 兑换结果 
---@param reward p_reward @ 奖励 
function sc.sc_hegemony_exchange(result, reward) end

---@param round uint64 @ 决赛场次 
---@param round_endsec uint64 @ 该场次何时结束 
---@param hist_list p_hegemony_final_hist[] @ 决赛战报 
---@param vsinfo_list p_hegemony_final_vsinfo[] @ 决赛对阵 
function sc.sc_hegemony_final_info(round, round_endsec, hist_list, vsinfo_list) end

---@param add_hist_list p_hegemony_final_hist[] @ 新增决赛战报 
function sc.sc_hegemony_final_notify(add_hist_list) end

---@param result uint64 @ 调整结果 
function sc.sc_hegemony_gerlist_adjust(result) end

---@param prelilist p_ger_summary[] @ 预赛阵容 
---@param finallist p_ger_summary[] @ 决赛阵容 
function sc.sc_hegemony_gerlist_info(prelilist, finallist) end

---@param preli_hist_list p_hegemony_preli_hist[] @ 预赛战报 
---@param final_hist_list p_hegemony_final_hist[] @ 决赛战报 
---@param final_hist_all p_hegemony_final_hist[] @ 所有决赛战报 
function sc.sc_hegemony_hist_info(preli_hist_list, final_hist_list, final_hist_all) end

---@param state uint64 @ 活动状态 
---@param ijoin uint64 @ 能否参与 
function sc.sc_hegemony_info(state, ijoin) end

---@param round uint64 @ 预赛场次 
---@param round_endsec uint64 @ 该场次何时结束 
---@param hist_list p_hegemony_preli_hist[] @ 预赛战报 
---@param result_list p_hegemony_preli_result[] @ 预赛结果 
function sc.sc_hegemony_preli_info(round, round_endsec, hist_list, result_list) end

---@param add_hist_list p_hegemony_preli_hist[] @ 新增预赛战报 
---@param add_result_list p_hegemony_preli_result[] @ 新增预赛结果 
function sc.sc_hegemony_preli_notify(add_hist_list, add_result_list) end

---@param result uint64 @ 请求结果 
---@param replay p_fight_struct @ 战斗录像 
function sc.sc_hegemony_replay_final(result, replay) end

---@param result uint64 @ 请求结果 
---@param replay p_fight_struct @ 战斗录像 
function sc.sc_hegemony_replay_self(result, replay) end

---@param signup_state uint64 @ 报名状态 
---@param champion p_hegemony_struct @ 冠军角色信息 
---@param signup_number uint64 @ 报名人数 
---@param signup_limit uint64 @ 报名人数上限 
---@param hegemony_start uint64 @ 争霸开始时间 
---@param hegemony_end uint64 @ 争霸结束时间 
---@param betting_state uint64 @ 押注状态 
function sc.sc_hegemony_signup_info(signup_state, champion, signup_number, signup_limit, hegemony_start, hegemony_end, betting_state) end

---@param result uint64 @ 报名结果 
function sc.sc_hegemony_signup_request(result) end

---@param state uint64 @ 具体状态 
function sc.sc_hegemony_state_update(state) end

---@param tops_list p_hegemony_struct[] @ 排行榜列表 
---@param self_info p_hegemony_struct @ 自己的数据 
function sc.sc_hegemony_tops_info(tops_list, self_info) end

---@param result uint64 @ 结果 
function sc.sc_hist_share(result) end

---@param result uint64 @ 结果 
---@param fight_struct p_fight_struct @ 战斗结构 
---@param atkpvp p_role_hist @ 攻击方信息 
---@param defpvp p_role_hist @ 防守方信息 
function sc.sc_hist_watch(result, fight_struct, atkpvp, defpvp) end

---@param result uint64 @ 结果 
---@param fight_structs p_fight_list[] @战斗结构 
---@param fight_result p_extreme_record @战斗结算 
function sc.sc_hist_watch_extreme(result, fight_structs, fight_result) end

---@param result uint64 @操作结果 
---@param new_role p_homefight_member_dt @新的角色状态 
function sc.sc_homefight_back(result, new_role) end

function sc.sc_homefight_battle_end() end

---@param atker uint64 @攻击者的roleid 
---@param hp_percent uint64 @血量万分比 
function sc.sc_homefight_boss(atker, hp_percent) end

---@param result uint64 @操作结果 
---@param new_role p_homefight_member_dt @操作后的玩家新状态 
---@param bought_list p_homefight_sell[] @已购买的buf列表 
function sc.sc_homefight_buy(result, new_role, bought_list) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_change_ger(result, team) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_create_team(result, team) end

---@param end_sec uint64 @副本结束时间 
---@param stage uint64 @副本阶段 
---@param members p_homefight_member_dt[] @副本中的队友 
---@param dungeon_fort uint64 @副本所在的据点 
---@param boss_dungeon uint64 @boss对应的关卡ID 
function sc.sc_homefight_dungeon(end_sec, stage, members, dungeon_fort, boss_dungeon) end

---@param fort_id uint64 @据点ID 
function sc.sc_homefight_dungeon_notify(fort_id) end

---@param is_win bool @是否获胜 
---@param reward p_reward @奖励内容 
---@param all_member p_homefight_member_dt[] @所有人的最终数据 
---@param extra_reward p_reward @最佳的奖励内容 
---@param used_sec uint64 @用的时间 
---@param dungeon_lv uint64 @关卡难度等级 
function sc.sc_homefight_end(is_win, reward, all_member, extra_reward, used_sec, dungeon_lv) end

---@param result uint64 @操作结果 
---@param fight_struct p_fight_struct @战斗录像 
---@param harm_val uint64 @伤害 
---@param harm_percent uint64 @伤害量万分比 
function sc.sc_homefight_fight_boss(result, fight_struct, harm_val, harm_percent) end

---@param fort_id uint64 @据点ID 
---@param dungeon_list p_homefight_dungeon[] @关卡列表 
function sc.sc_homefight_fort(fort_id, dungeon_list) end

---@param left_times uint64 @剩余挑战次数 
---@param boss_type uint64 @Boss的TypeID 
---@param in_team bool @是否在组队状态 
---@param in_dungeon bool @是否在关卡中 
---@param is_open bool @活动是否开启 
function sc.sc_homefight_info(left_times, boss_type, in_team, in_dungeon, is_open) end

---@param result uint64 @操作结果 
function sc.sc_homefight_invite(result) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_join_team(result, team) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_kick(result, team) end

function sc.sc_homefight_kick_notify() end

---@param result uint64 @操作结果 
function sc.sc_homefight_leave(result) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_mark_ready(result, team) end

---@param result uint64 @操作结果 
---@param new_role p_homefight_member_dt @操作后的玩家新状态 
function sc.sc_homefight_move(result, new_role) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_new_team(result, team) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_quick_join(result, team) end

---@param result uint64 @操作结果 
---@param pos uint64 @怪物在的位置 
---@param attacker_win bool @是否胜利 
function sc.sc_homefight_report(result, pos, attacker_win) end

---@param result uint64 @操作结果 
---@param pos uint64 @点击的位置 
---@param fight_struct p_fight_struct @战斗结构 
function sc.sc_homefight_request(result, pos, fight_struct) end

---@param new_role p_homefight_member_dt @新的玩家信息 
function sc.sc_homefight_role_notify(new_role) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_set_level(result, team) end

---@param result uint64 @操作结果 
---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_set_open(result, team) end

---@param bought_list p_homefight_sell[] @已购买的buf列表 
function sc.sc_homefight_shop(bought_list) end

---@param result uint64 @操作结果 
function sc.sc_homefight_start(result) end

---@param state uint64 @活动状态 
function sc.sc_homefight_state(state) end

function sc.sc_homefight_team() end

---@param team p_homefight_team @队伍信息 
function sc.sc_homefight_team_sync(team) end

function sc.sc_horse_enter() end

---@param my_most_trainerid uint64 @ 我投票的最多的训练师 
---@param extra_odds int32 @ 额外赔率 
---@param track_ret_list p_track_ret[] @ 跑道 
---@param self_odds p_odds_info[] @ 自己下注信息 
function sc.sc_horse_guessinfo(my_most_trainerid, extra_odds, track_ret_list, self_odds) end

---@param stage int32 @ 当前处于哪个阶段 
---@param run_time uint64 @ 开跑时间 
function sc.sc_horse_info(stage, run_time) end

---@param my_trainerid uint64 @ 我鼓舞的训练师 
---@param money p_reward @ 消耗的货币 
function sc.sc_horse_inspire(my_trainerid, money) end

---@param inspireinfo p_inspireinfo[] @ 
---@param track_ret_list p_track_ret[] @ 跑道 
---@param odds_ret_list p_odds_ret_info[] @ 最终赔率 
---@param self_inspire p_inspireinfo[] @ 自己的鼓舞信息 
function sc.sc_horse_inspireinfo(inspireinfo, track_ret_list, odds_ret_list, self_inspire) end

function sc.sc_horse_leave() end

---@param trainerid uint64 @ 
function sc.sc_horse_notify_inspire_fly(trainerid) end

---@param stage int32 @ 当前处于哪个阶段 
function sc.sc_horse_notify_stage(stage) end

---@param my_trainerid uint64 @ 我竞猜的训练师 
---@param extra_odds int32 @ 额外赔率 
---@param count int32 @ 竞猜次数 
---@param money p_reward @ 消耗钱 
function sc.sc_horse_precom_guess(my_trainerid, extra_odds, count, money) end

---@param track_ret_list p_track_ret[] @ 跑道 
function sc.sc_horse_real_match(track_ret_list) end

---@param record_list p_record_info[] @ 
function sc.sc_horse_record(record_list) end

---@param votes_info p_votes_info[] @ 所有玩家投票 
---@param self_votes p_votes_info[] @ 玩家自己的投票 
function sc.sc_horse_selectinfo(votes_info, self_votes) end

---@param my_trainerid uint64 @ 我投票的训练师 
---@param my_votes int32 @ 我的投票数 
function sc.sc_horse_selection(my_trainerid, my_votes) end

---@param msg_list p_hotmsg[] @公告列表 
function sc.sc_hotmsg_list(msg_list) end

---@param result uint64 @结果 
---@param reward p_reward @开出来的东西 
function sc.sc_item_box_open(result, reward) end

---@param result uint64 @ 是否满背包(1:否,255:是) 
---@param number int64 @ 成功开启数量 
---@param reward p_reward[] @ 开出来的东西 
function sc.sc_item_box_open_onekey(result, number, reward) end

---@param result uint64 @操作结果 
---@param reward p_reward @开出来的东西 
function sc.sc_item_chosebox_open(result, reward) end

---@param result uint64 @结果 
---@param reward_list p_item_chosebox[] @箱子内容 
function sc.sc_item_chosebox_view(result, reward_list) end

---@param result uint64 @ 结果 
function sc.sc_item_use(result) end

---@param mailid_list uint64[] @ 成功删除的邮件ID列表 
function sc.sc_mail_delete(mailid_list) end

---@param result uint64 @ 领取结果 
---@param mailidlist uint64[] @ 成功领取的邮件ID列表 
---@param reward p_reward[] @ 领取得到的奖励 
function sc.sc_mail_draw(result, mailidlist, reward) end

---@param mail_list p_mail[] @ 邮件列表 
---@param unrecv_num uint64 @ 未接收数量 
function sc.sc_mail_info(mail_list, unrecv_num) end

---@param mail_list p_mail[] @ 邮件列表 
---@param unrecv_num uint64 @ 未接收数量 
function sc.sc_mail_more(mail_list, unrecv_num) end

---@param mail_list p_mail[] @ 新增的邮件列表 
function sc.sc_mail_new(mail_list) end

---@param mailid_list uint64[] @ 成功标记已读的邮件ID列表 
function sc.sc_mail_read(mailid_list) end

---@param result uint64 @ 请求结果 
---@param attacker_win bool @ 是否胜利 
---@param seat_list p_mine_seat[] @位置上的人信息 
---@param reward p_reward @奖励内容 
---@param dead_gerid_list uint64[] @总共死亡的宝贝id列表 
function sc.sc_mine_attack_report(result, attacker_win, seat_list, reward, dead_gerid_list) end

---@param result uint64 @攻击结果 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_mine_attack_request(result, fight_struct) end

---@param result uint64 @购买结果 
---@param new_car p_mine_car @成功后新的矿坑 
function sc.sc_mine_buy(result, new_car) end

---@param result uint64 @开始挖矿结果 
---@param new_car p_mine_car @成功后新的矿车信息 
---@param used_gerid_list uint64[] @更新后的已使用宝贝ID列表 
function sc.sc_mine_dig(result, new_car, used_gerid_list) end

---@param result uint64 @操作结果 
---@param reward p_reward @具体奖励 
---@param new_car p_mine_car @领奖成功后空的矿车 
---@param used_gerid_list uint64[] @已经使用的宝贝列表 
function sc.sc_mine_draw(result, reward, new_car, used_gerid_list) end

---@param result uint64 @结果 
---@param tar_mine p_mine_detail @对方的矿坑信息 
---@param atk_info p_mine_atk_info @新的攻击信息 
---@param cur_search_cost p_money[] @搜索其他玩家的矿需要的消耗 
function sc.sc_mine_explore(result, tar_mine, atk_info, cur_search_cost) end

---@param result uint64 @操作结果 
---@param new_car p_mine_car @护卫完成后自己新的矿坑信息 
---@param used_geridList uint64[] @当前已经使用宝贝 
function sc.sc_mine_guard(result, new_car, used_geridList) end

---@param type uint64 @战报类型 
---@param hist_list p_mine_hist[] @战报列表 
function sc.sc_mine_hist(type, hist_list) end

---@param result uint64 @请求挖矿主界面结果 
---@param cur_buy_cost p_money[] @直接去买矿的消耗 
---@param cur_search_cost p_money[] @搜索其他玩家的矿需要的消耗 
---@param car_list p_mine_car[] @矿车的信息 
---@param cur_atk_info p_mine_atk_info @当前正在攻击的目标 
---@param used_geridList uint64[] @当前已经使用宝贝 
---@param tar_mine p_mine_detail @对方的矿坑信息,只在有进攻目标的时候有值 
function sc.sc_mine_info(result, cur_buy_cost, cur_search_cost, car_list, cur_atk_info, used_geridList, tar_mine) end

---@param result uint64 @邀请结果 
function sc.sc_mine_invite(result) end

---@param result uint64 @ 结果 
---@param mine p_mine_detail @ 具体的矿坑信息 
function sc.sc_mine_join_view(result, mine) end

---@param new_car p_mine_car[] @新的矿车信息 
function sc.sc_mine_notify(new_car) end

---@param result uint64 @操作结果 
---@param new_car p_mine_car @新开成功的矿车 
function sc.sc_mine_open(result, new_car) end

---@param result uint64 @刷新结果 
---@param pos uint64 @要做刷新的矿坑的位置 
---@param mineTypeIDList uint64[] @新矿坑模板ID 
---@param cur_buy_cost p_money[] @当前刷新消耗 
function sc.sc_mine_refresh(result, pos, mineTypeIDList, cur_buy_cost) end

---@param role_public p_role_public @角色的公告信息 
---@param ger_line p_ger_summary[] @选择护矿的阵容 
function sc.sc_mine_view(role_public, ger_line) end

---@param add_rate uint64 @阵容提供的加成万分比 
function sc.sc_mine_view_reward(add_rate) end

---@param result uint64 @ 出售结果 
---@param reward p_reward @ 具体奖励 
function sc.sc_money_buy(result, reward) end

---@param moneylist p_money[] @ 货币列表 
function sc.sc_money_info(moneylist) end

---@param newlist p_money[] @ 新增列表 
---@param updatelist p_money[] @ 更新列表 
---@param deletelist p_money[] @ 删除列表 
function sc.sc_money_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 开启结果 
---@param reward p_reward @ 具体奖励 
function sc.sc_money_openbox(result, reward) end

---@param result uint64 @ 出售结果 
---@param reward p_reward @ 具体奖励 
function sc.sc_money_sell(result, reward) end

---@param notice_list p_notice[] @ 公告列表 
function sc.sc_notice_msg(notice_list) end

---@param result uint64 @ 结果 
function sc.sc_onlinerwd_draw(result) end

---@param haverwd uint64 @ 当天是否还有奖励 
---@param cdown uint64 @ 下次领取的时间点 
---@param rwdid uint64 @ 奖励ID 
---@param reward p_reward @ 奖励列表 
function sc.sc_onlinerwd_info(haverwd, cdown, rwdid, reward) end

---@param result uint64 @ 充值结果 
---@param rewards p_reward[] @ 充值奖励 
function sc.sc_pay_first_draw(result, rewards) end

---@param first_pay_state uint64 @ 首充相关状态 
---@param paid_case_list uint64[] @ 已充档位列表 
function sc.sc_pay_info(first_pay_state, paid_case_list) end

---@param result uint64 @ 充值结果 
---@param reward p_reward @ 充值奖励 
---@param pay_type uint64 @ 充值类型 
---@param pay_case uint64 @ 充值档位(非定档为0) 
---@param amount_rmbfen uint64 @ 充值额度(分) 
function sc.sc_pay_notify(result, reward, pay_type, pay_case, amount_rmbfen) end

function sc.sc_perterr_announce() end

---@param bcrit int32 @是否暴击 1暴击 0没暴击 
---@param normalreward p_reward @普通奖励 
---@param roleexp int64 @普通奖励(人物经验) 
---@param colreward p_reward @暴击奖励 
---@param production_shop p_production_shop @生产器 
function sc.sc_perterr_collect(bcrit, normalreward, roleexp, colreward, production_shop) end

---@param foster p_foster @被寄养信息 
function sc.sc_perterr_foster(foster) end

---@param reward p_reward @奖励内容 
function sc.sc_perterr_fosterdraw(reward) end

---@param finfo p_perterr_friendinfo[] @好友信息 
---@param bdraw int32 @是否可以领奖 
---@param surtime uint64 @剩余寄养时间 
---@param froleid uint64 @被寄养的玩家id 
function sc.sc_perterr_friend(finfo, bdraw, surtime, froleid) end

---@param production_shop p_production_shop @生产器 
function sc.sc_perterr_getprod(production_shop) end

---@param production_skill p_production_skill @生产技能 
function sc.sc_perterr_getskill(production_skill) end

function sc.sc_perterr_info() end

---@param result uint64 @ 发送结果 
function sc.sc_perterr_invite_foster(result) end

function sc.sc_perterr_openshop() end

---@param prod_shop p_production_shop @生产器 
function sc.sc_perterr_prod_uplv(prod_shop) end

---@param rcle_shop p_recycle_shop @回收站 
function sc.sc_perterr_rcle_uplv(rcle_shop) end

---@param reward p_reward @奖励内容 
---@param rcle_shop p_recycle_shop @回收站 
function sc.sc_perterr_recycle(reward, rcle_shop) end

---@param production_skill p_production_skill @生产技能 
function sc.sc_perterr_skilluplv(production_skill) end

---@param production_skill p_production_skill @生产技能 
function sc.sc_perterr_switch_title(production_skill) end

---@param production_skill p_production_skill @生产技能 
function sc.sc_perterr_tupo(production_skill) end

---@param name string @ 玩家名字 
---@param roleid uint64 @ 玩家roleid 
---@param harm uint64 @ 伤害值 
---@param icon uint64 @ 头像ID 
---@param hp uint64 @ 
function sc.sc_player_harm(name, roleid, harm, icon, hp) end

---@param result uint64 @ 结果 
function sc.sc_pokdex_feed(result) end

---@param result uint64 @ 结果 
---@param pokdexes p_pokdex[] @ 宝贝图鉴信息 
function sc.sc_pokdex_info(result, pokdexes) end

---@param newlist p_pokdex[] @ 新增列表 
---@param updatelist p_pokdex[] @ 更新列表 
---@param deletelist p_pokdex[] @ 删除列表 
function sc.sc_pokdex_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 结果 
function sc.sc_pokdex_onekey_feed(result) end

---@param result uint64 @ 结果 
function sc.sc_pokdex_uprank(result) end

---@param rank_list p_powerrank[] @战斗力排行榜 
---@param reward_list p_powerrank_reward[] @战斗力排行给的奖励 
---@param achv_list p_powerrank_achv_reward[] @战斗力到达多少后给的奖励 
---@param my_rank uint64 @自己的排名要是没上榜就是0 
function sc.sc_powerrank_list(rank_list, reward_list, achv_list, my_rank) end

---@param start_time uint64 @开启时间戳 
---@param end_time uint64 @结束时间戳 
---@param priority uint64 @活动优先级 
---@param icon string @图标 
---@param title string @名称 
---@param content string @内容 
---@param is_open uint64 @是否是开服活动 
---@param rewardger uint64 @奖励的武将的typeid 
---@param max_power uint64 @历史最高战斗力,不显示用来算奖励那是不是已完成 
function sc.sc_powerrank_open(start_time, end_time, priority, icon, title, content, is_open, rewardger, max_power) end

---@param result uint64 @操作结果 
---@param reward p_reward @奖励内容 
---@param new_score uint64 @新的积分 
---@param count uint32 @当前祈福次数 
---@param bfree uint32 @第一次单次祈福免费 
function sc.sc_pray_do(result, reward, new_score, count, bfree) end

---@param result uint64 @结果 
---@param reward p_reward @奖励内容 
---@param draw_indexs uint64[] @已经领取的积分奖励档位 
function sc.sc_pray_draw(result, reward, draw_indexs) end

---@param result uint32 @操作结果 
---@param endtime uint64 @ 
---@param typeid uint64 @本期宝贝的typeid 
---@param self_score uint64 @自己的积分 
---@param draw_indexs uint64[] @已经领取的积分奖励档位 
---@param one_cost p_reward @一次消耗 
---@param ten_cost p_reward @十次消耗 
---@param count uint32 @当前祈福次数 
---@param pray_state uint32 @当前祈福次数 
---@param bfree uint32 @第一次单次祈福免费 
---@param client_show_info p_client_show_info @客户端显示信息 
function sc.sc_pray_info(result, endtime, typeid, self_score, draw_indexs, one_cost, ten_cost, count, pray_state, bfree, client_show_info) end

---@param result uint32 @操作结果 
---@param rank_list p_pray_rank[] @排行榜 
---@param self_rank uint64 @自己的排行 
---@param score uint64 @自己的积分 
function sc.sc_pray_rank(result, rank_list, self_rank, score) end

function sc.sc_pray_state() end

function sc.sc_precious_imbue() end

---@param preciouslist p_precious[] @ 刻印列表 
function sc.sc_precious_info(preciouslist) end

---@param newlist p_precious[] @ 新增列表 
---@param updatelist p_precious[] @ 更新列表 
---@param deletelist p_precious[] @ 删除列表 
function sc.sc_precious_notify(newlist, updatelist, deletelist) end

function sc.sc_precious_unload() end

function sc.sc_precious_uprank() end

---@param reward p_reward @ 领取的奖励 
---@param actpoint_reward p_actpoint_reward @ 活跃点奖励更新 
function sc.sc_pvp_actpoint_draw(reward, actpoint_reward) end

---@param reward p_reward @ 领取的奖励 
---@param actpoint_reward p_actpoint_reward[] @ 活跃点奖励更新 
---@param result uint64 @ 结果 
function sc.sc_pvp_actpoint_onekey(reward, actpoint_reward, result) end

---@param actpoint uint64 @ 当前活跃点 
function sc.sc_pvp_actpoint_reward(actpoint) end

---@param eracost p_money @ 冷却清除消耗 
function sc.sc_pvp_cool_erase(eracost) end

---@param result uint64 @ 结果 
---@param newrank uint64 @ 新排名 
---@param dropreward p_reward @ 掉落奖励 
---@param fight_struct p_fight_struct @ 战斗结构 
---@param pvptimes uint64 @ PVP可挑战次数 
---@param pvplist p_pvp[] @ 新挑战列表 
---@param atkpvp p_pvp @ 本方PVP 
---@param defpvp p_pvp @ 对方PVP 
---@param cooltime uint64 @ 挑战冷却倒计时 
---@param eracost p_money @ 清除消耗 
function sc.sc_pvp_fight(result, newrank, dropreward, fight_struct, pvptimes, pvplist, atkpvp, defpvp, cooltime, eracost) end

---@param cooltime uint64 @ 更新冷却时间 
function sc.sc_pvp_fight_buy(cooltime) end

---@param fight_struct p_fight_struct @ 战斗结构 
---@param atkpvp p_pvp @ 本方PVP 
---@param defpvp p_pvp @ 对方PVP 
function sc.sc_pvp_fight_replay(fight_struct, atkpvp, defpvp) end

---@param rank uint64 @ 当前排名 
---@param pvplist p_pvp[] @ 挑战列表 
---@param pvptimes uint64 @ 已挑战次数 
---@param buytimes uint64 @ 购买次数 
---@param cooltime uint64 @ 挑战冷却倒计时 
---@param worshipids uint64[] @ 膜拜的玩家ID列表 
---@param showicon p_showicon @ 展示icon 
---@param refcost p_money @ 刷新消耗 
---@param eracost p_money @ 冷却清除消耗 
function sc.sc_pvp_get_list(rank, pvplist, pvptimes, buytimes, cooltime, worshipids, showicon, refcost, eracost) end

---@param atkhist p_pvp_hist[] @ 进攻战报 
---@param defhist p_pvp_hist[] @ 防守战报 
function sc.sc_pvp_hist_list(atkhist, defhist) end

---@param worshipupdate p_worship_update[] @ 被膜拜的玩家信息更新 
---@param worshipids uint64[] @ 膜拜的玩家ID列表 
function sc.sc_pvp_onekey_worship(worshipupdate, worshipids) end

---@param reward p_reward @ 领取的奖励 
---@param rank_reward p_rank_reward @ 排行奖励状态更新 
function sc.sc_pvp_rank_draw(reward, rank_reward) end

---@param history_rank uint64 @ 历史最高排名 
---@param reward_acc p_reward @ 累计获得奖励 
---@param rank_reward p_rank_reward[] @ 排行奖励 
function sc.sc_pvp_rank_reward(history_rank, reward_acc, rank_reward) end

---@param result uint64 @ 结果 
---@param pvplist p_pvp[] @ 新挑战列表 
---@param refcost p_money @ 刷新消耗 
function sc.sc_pvp_refresh(result, pvplist, refcost) end

---@param result uint64 @ 结果 
---@param showicon p_showicon @ 选中的展示icon 
function sc.sc_pvp_show_icon(result, showicon) end

function sc.sc_pvp_top_list() end

---@param worshipupdate p_worship_update @ 被膜拜的玩家信息更新 
---@param worshipids uint64[] @ 膜拜的玩家ID列表 
function sc.sc_pvp_worship(worshipupdate, worshipids) end

---@param result uint64 @ 结果 
---@param robtimes uint64 @ 今日已抢次数 
---@param envelope p_renvelope @ 红包结构 
---@param isrob uint64 @ 是否已抢过当前红包 
function sc.sc_renvelope_info(result, robtimes, envelope, isrob) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 红包奖励 
function sc.sc_renvelope_rob(result, reward) end

---@param ctimes uint64 @ 红包可抢次数 
function sc.sc_renvelope_xhd(ctimes) end

function sc.sc_reset_zero() end

---@param gift_list p_rmbgift[] @礼包列表 
---@param vip_gift_list p_rmbgift[] @vip礼包列表 
---@param all_gift_list p_rmbgift[] @vip礼包列表 
function sc.sc_rmbgift_info(gift_list, vip_gift_list, all_gift_list) end

---@param result uint64 @ 购买结果 
---@param energy uint64 @ 新体力值 
---@param energy_buy_times uint64 @ 新购买次数 
function sc.sc_role_buy_energy(result, energy, energy_buy_times) end

---@param result uint64 @ 购买结果 
---@param mineenergy uint64 @ 新体力值 
---@param mineenergy_buy_times uint64 @ 新购买次数 
function sc.sc_role_buy_mineenergy(result, mineenergy, mineenergy_buy_times) end

---@param result uint64 @ 购买结果 
---@param skillpoint uint64 @ 新体力值 
---@param skillpoint_buy_times uint64 @ 新购买次数 
function sc.sc_role_buy_skillpoint(result, skillpoint, skillpoint_buy_times) end

---@param result uint64 @ 结果 
---@param new_click_times uint64 @ 新点金次数 
---@param crit uint64 @ 暴击倍率 
---@param critnum uint64 @ 暴击次数 
---@param reward uint64 @ 奖励 
function sc.sc_role_click_gold(result, new_click_times, crit, critnum, reward) end

---@param energy uint64 @ 当前体力值 
---@param energy_next_recv uint64 @ 下次体力回复时间 
function sc.sc_role_energy_notify(energy, energy_next_recv) end

---@param result uint64 @ 使用结果 
---@param sumexp uint64 @ 获得总经验 
function sc.sc_role_exp_effect(result, sumexp) end

---@param rolelv uint64 @ 现在角色等级 
---@param roleexp uint64 @ 现在角色经验 
function sc.sc_role_exp_notify(rolelv, roleexp) end

---@param roleextra p_role_extra @ 其它信息 
function sc.sc_role_extra(roleextra) end

---@param atklist p_ger[] @ 进攻列表 
---@param deflist p_ger[] @ 防御列表 
---@param equiplist p_equip[] @ 装备列表 
---@param atkspeed uint64 @ 攻击阵容先手值 
---@param defspeed uint64 @ 防守阵容先手值 
function sc.sc_role_fighters(atklist, deflist, equiplist, atkspeed, defspeed) end

---@param firstatk uint64 @ 新先手值 
function sc.sc_role_firstatk_update(firstatk) end

---@param roleinfo p_role_info @ 角色信息 
function sc.sc_role_info(roleinfo) end

---@param mineenergy uint64 @ 当前体力值 
---@param mineenergy_next_recv uint64 @ 下次体力回复时间 
function sc.sc_role_mineenergy_notify(mineenergy, mineenergy_next_recv) end

function sc.sc_role_openhcard() end

---@param opt_list p_option[] @ 选项列表 
function sc.sc_role_options(opt_list) end

---@param atkpower uint64 @ 进攻战斗力 
---@param defpower uint64 @ 防御战斗力 
function sc.sc_role_power_notify(atkpower, defpower) end

---@param publiclist p_role_public[] @ 公共信息列表 
function sc.sc_role_public(publiclist) end

function sc.sc_role_rename() end

---@param result uint64 @ 设置结果 
---@param newicon uint64 @ 新头像ID 
function sc.sc_role_seticon(result, newicon) end

---@param result uint64 @ 设置结果 
---@param key uint64 @ 键 
---@param value sint64 @ 值 
function sc.sc_role_setopt(result, key, value) end

---@param skillpoint uint64 @ 当前体力值 
---@param skillpoint_next_recv uint64 @ 下次体力回复时间 
function sc.sc_role_skillpoint_notify(skillpoint, skillpoint_next_recv) end

---@param times uint64 @购买次数 
function sc.sc_sgame_buytimes(times) end

---@param reward p_reward @奖励 
function sc.sc_sgame_draw(reward) end

function sc.sc_sgame_enter() end

---@param sgame_base sgame_base_info @对应小游戏基础信息 
---@param canusenum uint64 @小游戏当前可用次数（所有小游戏公用同一个次数） 
---@param totalnum uint64 @小游戏当日总共可用次数 
---@param buy_times uint64 @小游戏当日已购买次数 
function sc.sc_sgame_info(sgame_base, canusenum, totalnum, buy_times) end

---@param sgame_base sgame_base_info @更某个小游戏数据 
function sc.sc_sgame_notify(sgame_base) end

---@param buy_times uint64 @小游戏当日已购买次数 
function sc.sc_sgame_num_notify(buy_times) end

---@param reward p_reward @奖励 
function sc.sc_sgame_onekey(reward) end

---@param points uint64 @获得积分 
---@param reward p_reward @获得宝箱奖励 
function sc.sc_sgame_over(points, reward) end

---@param lists p_sgame_reward[] @积分奖励列表 
function sc.sc_sgame_reward(lists) end

---@param result uint64 @ 购买结果 
function sc.sc_shop_buy(result) end

---@param shoplist p_shop[] @ 商店列表 
---@param freesec uint64 @ 觉醒商店免费单抽倒计时 
---@param bide_times uint64 @ X次后必得觉醒石 
---@param one_gold uint64 @ 觉醒商店单抽价格 
---@param one_gold_dis uint64 @ 觉醒商店单抽折扣 
---@param ten_gold uint64 @ 觉醒商店十连抽价格 
---@param ten_gold_dis uint64 @ 觉醒商店十连抽折扣 
---@param one_dis_start uint64 @ 单抽打折起始时间 
---@param one_dis_end uint64 @ 单抽打折结束时间 
---@param ten_dis_start uint64 @ 十连抽打折起始时间 
---@param ten_dis_end uint64 @ 十连抽打折结束时间 
function sc.sc_shop_list(shoplist, freesec, bide_times, one_gold, one_gold_dis, ten_gold, ten_gold_dis, one_dis_start, one_dis_end, ten_dis_start, ten_dis_end) end

---@param newlist p_shop[] @ 新增列表 
---@param updatelist p_shop[] @ 更新列表 
---@param deletelist p_shop[] @ 删除列表 
function sc.sc_shop_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 刷新结果 
function sc.sc_shop_refresh(result) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励 
---@param bide_times uint64 @ X次后必得觉醒石 
---@param freesec uint64 @ 觉醒商店免费单抽倒计时 
function sc.sc_shop_wake_onedraw(result, reward, bide_times, freesec) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励 
function sc.sc_shop_wake_tendraw(result, reward) end

---@param result uint64 @操作结果 
---@param reward p_reward @成功后领取的奖励 
function sc.sc_sign_draw(result, reward) end

---@param result uint64 @操作结果 
---@param reward p_reward @成功后领取的奖励 
---@param new_add_reward p_sign_add_reward @新的累计签到信息 
function sc.sc_sign_draw_add(result, reward, new_add_reward) end

---@param month uint64 @当前是几月 
---@param can_sign bool @当前是否可以签到 
---@param month_sign_times uint64 @当前月份签到次数 
---@param rewardlist p_sign_reward[] @签到给予的奖励信息 
---@param add_reward p_sign_add_reward @累计签到信息 
function sc.sc_sign_info(month, can_sign, month_sign_times, rewardlist, add_reward) end

---@param active p_statue @已激活雕像列表 
---@param maxstatuelist p_statue[] @各区域品阶 对应的最高激活列表 
function sc.sc_statue_active(active, maxstatuelist) end

---@param activelist p_statue[] @已激活雕像列表 
---@param maxstatuelist p_statue[] @各区域品阶 对应的最高激活列表 
function sc.sc_statue_areainfo(activelist, maxstatuelist) end

---@param unlocklist p_statue[] @已解锁列表 
function sc.sc_statue_info(unlocklist) end

function sc.sc_statue_rateinfo() end

function sc.sc_statue_unlock() end

---@param result uint64 @ 结果 
---@param rank p_adv_star @ 玩家排行信息 
---@param toprank p_top_ranker @ 本服最强 
---@param ranklist p_adv_star[] @ 排行列表 
function sc.sc_sysrank_advstar(result, rank, toprank, ranklist) end

---@param result uint64 @ 结果 
---@param summary p_family_summary @ 工会信息 
function sc.sc_sysrank_family_summary(result, summary) end

---@param result uint64 @ 结果 
---@param rank p_fight_power @ 玩家排行信息 
---@param toprank p_top_ranker @ 本服最强 
---@param ranklist p_fight_power[] @ 排行列表 
function sc.sc_sysrank_fightpower(result, rank, toprank, ranklist) end

---@param result uint64 @ 结果 
---@param rank p_ger_pokdex @ 玩家排行信息 
---@param toprank p_top_ranker @ 本服最强 
---@param ranklist p_ger_pokdex[] @ 排行列表 
function sc.sc_sysrank_gerpokdex(result, rank, toprank, ranklist) end

---@param result uint64 @ 结果 
---@param rank p_top_family @ 玩家排行信息 
---@param toprank p_top_ranker @ 本服最强 
---@param ranklist p_top_family[] @ 排行列表 
function sc.sc_sysrank_topfamily(result, rank, toprank, ranklist) end

---@param result uint64 @ 结果 
---@param rank p_top_ger @ 玩家排行信息 
---@param toprank p_top_ranker @ 本服最强 
---@param ranklist p_top_ger[] @ 排行列表 
function sc.sc_sysrank_topger(result, rank, toprank, ranklist) end

---@param chatlist p_talk_msg[] @ 所有消息 
---@param shieldlist uint64[] @ 屏蔽列表 
function sc.sc_talk_msg_list(chatlist, shieldlist) end

---@param chatlist p_talk_msg[] @ 新增消息 
function sc.sc_talk_msg_notify(chatlist) end

---@param result uint64 @ 发送结果 
function sc.sc_talk_send_msg(result) end

---@param result int32 @ 所有消息 
---@param shieldlist uint64[] @ 屏蔽列表 
function sc.sc_talk_set_shield(result, shieldlist) end

---@param tasklist p_task[] @ 任务列表 
function sc.sc_task_daily(tasklist) end

---@param result uint64 @ 领取结果 
---@param reward p_reward @ 奖励内容 
function sc.sc_task_draw(result, reward) end

---@param newlist p_task[] @ 新增列表 
---@param updatelist p_task[] @ 更新列表 
---@param deletelist p_task[] @ 删除列表 
function sc.sc_task_notify(newlist, updatelist, deletelist) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励内容 
function sc.sc_task_one_draw(result, reward) end

---@param tasklist p_task[] @ 任务列表 
function sc.sc_task_trunk(tasklist) end

---@param result uint64 @操作结果 
function sc.sc_trainer_chose(result) end

---@param unlocklist p_trainer[] @已经解锁的训练师的 typeid 
function sc.sc_trainer_info(unlocklist) end

---@param result uint64 @操作结果 
function sc.sc_trainer_unlock(result) end

---@param result uint64 @ 结果 
function sc.sc_trial_buff_buy(result) end

---@param result uint64 @ 结果 
---@param fight_struct p_fight_struct @ 战斗结构 
function sc.sc_trial_challenge(result, fight_struct) end

---@param result uint64 @ 结果 
---@param star uint64 @ 战斗得星 
---@param isend uint64 @ 是否达到最高关卡 
---@param vipadd uint64 @ 积分vip加成 
---@param iswin uint64 @ 战斗结果 
function sc.sc_trial_challenge_back(result, star, isend, vipadd, iswin) end

---@param result uint64 @ 试炼宵禁 
function sc.sc_trial_curfew(result) end

---@param result uint64 @ 结果 
function sc.sc_trial_fj_leave(result) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励 
---@param rewardacc p_reward @ 累计获得的奖励 
function sc.sc_trial_hsr_draw(result, reward, rewardacc) end

---@param result uint64 @ 结果 
---@param rewardlist p_hsreward[] @ 历史积分奖励列表 
---@param rewardacc p_reward @ 累计获得的奖励 
function sc.sc_trial_hsr_info(result, rewardlist, rewardacc) end

---@param rewardlist p_hsreward[] @ 更新列表 
function sc.sc_trial_hsr_update(rewardlist) end

---@param result uint64 @ 结果 
---@param jumpdun uint64 @ 可跳到第X层级 
function sc.sc_trial_info1(result, jumpdun) end

---@param result uint64 @ 结果 
function sc.sc_trial_info2(result) end

---@param result uint64 @ 结果 
---@param type uint64 @ 跳关类型(类型同上) 
---@param score uint64 @ 积分奖励 
---@param morale uint64 @ 士气奖励 
---@param reward p_reward @ 保底奖励 
function sc.sc_trial_jump(result, type, score, morale, reward) end

---@param result uint64 @ 结果 
function sc.sc_trial_next_lv(result) end

---@param result uint64 @ 结果 
---@param rolerank p_srank @ 玩家排行 
---@param ranklist p_srank[] @ 积分排行列表 
function sc.sc_trial_score_rank(result, rolerank, ranklist) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 保底奖励 
function sc.sc_trial_tbox_fixreward(result, reward) end

---@param result uint64 @ 结果 
---@param reward p_reward @ 奖励 
---@param opentimes uint64 @ 实际开启宝箱个数 
function sc.sc_trial_tbox_open(result, reward, opentimes) end

---@param trial p_trial @ 更新后的试炼信息 
function sc.sc_trial_update(trial) end

---@param result uint64 @ 返回码 
function sc.sc_version(result) end

---@param result uint64 @ 领取结果 
---@param reward p_reward @ 具体奖励 
function sc.sc_vip_gift(result, reward) end

---@param info p_vip @ VIP信息 
function sc.sc_vip_info(info) end

---@param result uint64 @ 使用结果 
---@param add_viplv uint64 @ 增加VIP等级 
---@param add_points uint64 @ 增加VIP积分 
---@param add_overdue uint64 @ 增加激活时间 
function sc.sc_vip_item_effect(result, add_viplv, add_points, add_overdue) end

---@param info p_vip @ VIP信息 
function sc.sc_vip_update(info) end

---@param config_info p_wheel_config @活动配置相关信息 
function sc.sc_wheel_config(config_info) end

---@param result uint64 @操作结果 
---@param reward p_reward @已经领取的奖励内容 
---@param new_draw_score uint64[] @最新的已经领取的分数 
function sc.sc_wheel_draw(result, reward, new_draw_score) end

---@param my_score uint64 @我的积分 
---@param free_times uint64 @可免费抽取的次数 
---@param times_reward_draw uint64[] @已经领取的次数奖励，可领取的自己用当前积分和配置算 
function sc.sc_wheel_info(my_score, free_times, times_reward_draw) end

---@param role_name string[] @幸运玩家的名字 
function sc.sc_wheel_lucky_man(role_name) end

---@param result uint64 @结果 
---@param reward_list p_reward[] @奖励内容 
---@param new_score uint64 @新的积分 
function sc.sc_wheel_play(result, reward_list, new_score) end

---@param rank_list p_wheel_rank[] @排行榜 
function sc.sc_wheel_rank_list(rank_list) end

---@param state uint64 @活动开启状态 
---@param next_sec uint64 @下次阶段切换的时间 
function sc.sc_wheel_state(state, next_sec) end
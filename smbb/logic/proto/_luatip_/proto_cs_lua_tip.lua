cs = {}

---@param rname string @ 角色名字 
---@param icon uint64 @ 创建角色时初始训练师的显示id 
function cs.cs_account_create(rname, icon) end

---@param accid uint64 @ 账号ID 
---@param accname string @ 账号名 
---@param deadline uint64 @ 有效时间 
---@param ticket string @ 验证密钥 
---@param svrid uint64 @ 服务器ID 
---@param srctype uint64 @ 渠道ID 
---@param mac string @ MAC地址 
---@param devid string @ 设备ID 
---@param phone_model string @ 机型 
---@param sys_version string @ 系统版本 
---@param subtype uint64 @ 广告渠道 
---@param ip_info string @ IP地址信息 
---@param fc_type uint64 @ 财务渠道 
function cs.cs_account_login(accid, accname, deadline, ticket, svrid, srctype, mac, devid, phone_model, sys_version, subtype, ip_info, fc_type) end

function cs.cs_achieve_activity() end

function cs.cs_achieve_adventure() end

---@param achieveid uint64 @ 成就ID 
function cs.cs_achieve_draw(achieveid) end

function cs.cs_achieve_foster() end

function cs.cs_achieve_one_draw() end

function cs.cs_activity_active_view() end

---@param actid uint64 @ 对应活动ID 
function cs.cs_activity_czjj_buy(actid) end

---@param actid uint64 @ 活动ID 
---@param drawid uint64 @ 子项ID 
function cs.cs_activity_draw(actid, drawid) end

---@param idlist uint64[] @ ID列表 
function cs.cs_activity_info(idlist) end

function cs.cs_activity_kaifu() end

---@param activityid uint64 @活动id 
---@param drawid uint64 @drawid 
function cs.cs_activity_kaifu_draw(activityid, drawid) end

function cs.cs_activity_kaifu_drawend() end

function cs.cs_activity_preview() end

function cs.cs_battle_activity_list() end

---@param chapterid uint64 @ 章节ID 
function cs.cs_battle_chapter(chapterid) end

---@param chapterid uint64 @ 章节ID 
function cs.cs_battle_chapter_reward(chapterid) end

---@param dungeonid uint64 @ 关卡ID 
function cs.cs_battle_dungeon_reward(dungeonid) end

---@param battle_id uint64 @副本类型 
function cs.cs_battle_fight_line2(battle_id) end

---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_battle_fight_report(dungeonid, fight_struct) end

---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_battle_fight_report2(dungeonid, fight_struct) end

---@param dungeonid uint64 @ 关卡ID 
function cs.cs_battle_fight_request(dungeonid) end

---@param dungeonid uint64 @ 关卡ID 
---@param geridlist uint64[] @ 宝贝ID列表, [compatible] 060版本废弃保留做兼容 
---@param poslist uint64[] @ 宝贝站位列表, [compatible] 060版本废弃保留做兼容 
---@param trainerid uint64 @ 训练师ID 
function cs.cs_battle_fight_request2(dungeonid, geridlist, poslist, trainerid) end

---@param dungeonid uint64 @关卡ID 
function cs.cs_battle_fight_reset(dungeonid) end

---@param battle_id uint64 @副本类型 
---@param line p_lineup[] @要设置的阵容 
function cs.cs_battle_fight_set_line2(battle_id, line) end

---@param dungeonid uint64 @ 关卡ID 
---@param sweep_num uint64 @ 扫荡次数 
function cs.cs_battle_fight_sweep(dungeonid, sweep_num) end

---@param dungeonid uint64 @ 关卡ID 
---@param sweep_num uint64 @ 扫荡次数 
function cs.cs_battle_fight_sweep2(dungeonid, sweep_num) end

---@param battleid_list uint64[] @ 战役ID列表 
function cs.cs_battle_info(battleid_list) end

---@param dungeonid uint64 @ 关卡ID 
function cs.cs_battle_story_fight(dungeonid) end

function cs.cs_biogbattle_chapterinfo() end

function cs.cs_biogbattle_disposal() end

function cs.cs_biogbattle_exchange() end

function cs.cs_biogbattle_fight() end

function cs.cs_biogbattle_info() end

function cs.cs_biogbattle_openbox() end

---@param biogid int32 @ 选择的剧情id 
function cs.cs_biogbattle_select(biogid) end

function cs.cs_biogbattle_shopclose() end

function cs.cs_biogbattle_shoprefresh() end

---@param draw_type int32 @ 类型(1: = role;2: = family) 
---@param draw_inds int32[] @ 当前领奖id 
function cs.cs_boss_draw(draw_type, draw_inds) end

function cs.cs_boss_fight() end

function cs.cs_boss_harm() end

---@param open int32 @ 是否进入界面 
function cs.cs_boss_info(open) end

function cs.cs_boss_quit() end

---@param bselect int32 @ 
function cs.cs_boss_selvip(bselect) end

---@param tops_type int32 @ 类型(1: = role;2: = family;3: = familyrole) 
function cs.cs_boss_tops(tops_type) end

function cs.cs_box_info() end

---@param boxid uint64 @ 宝箱ID 
---@param num uint64 @ 箱子数量 
function cs.cs_box_open_treasurebox(boxid, num) end

---@param select_type uint64 @选取的抽取种类 
function cs.cs_box_select(select_type) end

function cs.cs_chaser_embattle() end

function cs.cs_chaser_enter() end

function cs.cs_chaser_fight() end

---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_chaser_fight_back(fight_struct) end

---@param gerid uint64 @ 上阵宝贝id 
---@param tarpos uint64 @ 上阵位置 
function cs.cs_chaser_ger_exchange(gerid, tarpos) end

---@param gerid uint64 @ 换位宝贝id 
---@param tarpos uint64 @ 目标位置 
function cs.cs_chaser_ger_movpos(gerid, tarpos) end

function cs.cs_chaser_invite() end

---@param teamid uint64 @ 队伍id 
function cs.cs_chaser_join(teamid) end

function cs.cs_chaser_leave() end

function cs.cs_chaser_new_teamup() end

function cs.cs_chaser_quick_join() end

function cs.cs_chicken_ask() end

function cs.cs_chicken_box() end

function cs.cs_chicken_box_draw() end

function cs.cs_chicken_eat_buf() end

---@param fort_id uint64 @据点ID 
function cs.cs_chicken_fort(fort_id) end

function cs.cs_chicken_init() end

function cs.cs_chicken_leave() end

---@param target uint64 @目标地点 
function cs.cs_chicken_move(target) end

---@param type uint64 @查看的排行榜的类型 
---@param offset uint64 @起始位置 
function cs.cs_chicken_rank_list(type, offset) end

---@param type uint64 @查看的排行榜的类型 
function cs.cs_chicken_rank_reward(type) end

function cs.cs_chicken_replay() end

---@param line p_lineup[] @设置的阵容 
function cs.cs_chicken_set_line(line) end

function cs.cs_chicken_sign() end

function cs.cs_chicken_sign_cancel() end

function cs.cs_chicken_state() end

function cs.cs_chicken_view_replay() end

---@param type uint64 @ 激活类型(1:普通模式,2:困难模式) 
function cs.cs_choicefight_active(type) end

function cs.cs_choicefight_buy() end

---@param type uint64 @ 类型 
---@param dungeonid uint64 @ 关卡ID 
function cs.cs_choicefight_fight_request(type, dungeonid) end

function cs.cs_choicefight_hard_buy() end

function cs.cs_choicefight_info() end

---@param type uint64 @ 类型 
function cs.cs_choicefight_line(type) end

---@param type uint64 @ 类型 
---@param dungeonid uint64 @ 关卡ID 
---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_choicefight_report(type, dungeonid, fight_struct) end

---@param type uint64 @ 类型 
function cs.cs_choicefight_reset(type) end

---@param type uint64 @ 类型 
---@param line p_lineup[] @ 要设置的阵容 
function cs.cs_choicefight_set_line(type, line) end

function cs.cs_config() end

---@param gerid uint64 @宝贝id 
---@param core_id int32 @核心id 
function cs.cs_digitalcore_activation(gerid, core_id) end

function cs.cs_digitalcore_info() end

---@param b_replace_consume int32 @是否勾选替代消耗,1:是,任意其他值不是 
function cs.cs_digitalcore_selreplace(b_replace_consume) end

---@param gerid uint64 @宝贝id 
---@param core_id int32 @核心id 
function cs.cs_digitalcore_tupo(gerid, core_id) end

function cs.cs_digivice_info() end

---@param digid uint64 @ 数码机ID 
---@param refid uint64 @ 洗炼ID 
---@param type uint64 @ 洗炼类型 
---@param locklist uint64[] @ 锁定的attrid列表 
function cs.cs_digivice_refine(digid, refid, type, locklist) end

---@param digid uint64 @ 第X代 
---@param type uint64 @ 强化方式 
function cs.cs_digivice_reinforce(digid, type) end

---@param digid uint64 @ 数码机ID 
---@param refid uint64 @ 洗炼ID 
---@param type uint64 @ 洗炼类型(同上) 
---@param replist p_refine_attr[] @ 替换列表 
function cs.cs_digivice_replace(digid, refid, type, replist) end

---@param digid uint64 @ 数码机ID 
---@param refid uint64 @ 洗炼ID 
function cs.cs_digivice_replace_giveup(digid, refid) end

function cs.cs_equip() end

---@param equipid uint64 @ 装备ID 
---@param foodlist p_money[] @ 材料装备列表 
function cs.cs_equip_eat(equipid, foodlist) end

---@param equipid uint64 @ 装备ID 
---@param onekey uint64 @ 是否一键 
function cs.cs_equip_uplevel(equipid, onekey) end

---@param equipid uint64 @ 装备ID 
function cs.cs_equip_uprank(equipid) end

---@param equipid uint64 @ 装备ID 
function cs.cs_equip_upstar(equipid) end

---@param boxpos uint64 @胜利宝箱的位置::1|2|3|4 
function cs.cs_extreme_battlebox_unlock(boxpos) end

function cs.cs_extreme_boxopen() end

function cs.cs_extreme_info() end

function cs.cs_extreme_match() end

function cs.cs_extreme_matchcancel() end

function cs.cs_extreme_my_record() end

---@param boxtype uint64 @ 此处传战斗宝箱type = 3 
function cs.cs_extreme_quickopen(boxtype) end

function cs.cs_extreme_rank() end

---@param replayid uint64 @replayid 
function cs.cs_extreme_replayview(replayid) end

---@param standuplist p_extreme_standup[] @布阵列表 
function cs.cs_extreme_standup(standuplist) end

function cs.cs_extreme_total_record() end

function cs.cs_family_apply_list() end

---@param familyid uint64 @ 申请公会ID 
function cs.cs_family_cancel_apply(familyid) end

---@param familyname string @ 公会名 
---@param notice string @ 公会公告 
---@param whatup string @ 公会宣言 
function cs.cs_family_create(familyname, notice, whatup) end

function cs.cs_family_dissolve() end

---@param type uint64 @ 捐献类型 
function cs.cs_family_donate(type) end

---@param notice string @ 公会公告 
---@param whatup string @ 公会宣言 
function cs.cs_family_edit(notice, whatup) end

---@param applyid uint64 @ 申请人ID 
---@param option uint64 @ 具体选项 
function cs.cs_family_handle_apply(applyid, option) end

function cs.cs_family_impeach_info() end

function cs.cs_family_impeach_start() end

function cs.cs_family_impeach_vote() end

function cs.cs_family_info() end

---@param roleid uint64 @ 准备踢的人的ID 
function cs.cs_family_kick(roleid) end

---@param pagenum uint64 @ 页码(从1开始) 
function cs.cs_family_list(pagenum) end

---@param option uint64 @ 选项 
---@param roleid uint64 @ 被操作者ID 
function cs.cs_family_manage(option, roleid) end

function cs.cs_family_msg_list() end

---@param type uint64 @要领取的红包类型 
function cs.cs_family_packet_drawfamily(type) end

---@param packetid uint64 @红包的id 
function cs.cs_family_packet_drawrole(packetid) end

function cs.cs_family_packet_info() end

function cs.cs_family_packet_ranklist() end

function cs.cs_family_quick_join() end

function cs.cs_family_quit() end

function cs.cs_family_recruit() end

---@param name string @ 字符串 
function cs.cs_family_search(name) end

---@param typeid uint64 @要发送的红包类型 
function cs.cs_family_sendpacket(typeid) end

---@param familyid uint64 @ 公会ID 
function cs.cs_family_send_apply(familyid) end

---@param tarroleid uint64 @ 对方角色ID 
function cs.cs_family_send_apply_fast(tarroleid) end

---@param chat_msg string @聊天内容 
function cs.cs_family_send_member_mail(chat_msg) end

---@param content string @ 发送内容 
function cs.cs_family_send_msg(content) end

---@param joinneedlv uint64 @ 加入需要的战队等级 
---@param join_needagree bool @ 加入是否需要审批 
function cs.cs_family_setarg(joinneedlv, join_needagree) end

---@param type uint64 @ 科技类型 
function cs.cs_family_upgrade_techlv(type) end

---@param tar_roleid uint64 @目标角色ID 
function cs.cs_family_view_other(tar_roleid) end

---@param score uint64 @得分 
---@param coin uint64 @金币获得 
---@param gold uint64 @钻石获得 
---@param card uint64 @卡牌获得 
function cs.cs_fbird_draw(score, coin, gold, card) end

function cs.cs_fbird_info() end

function cs.cs_fbird_rank() end

---@param dungeonid uint64 @关卡ID 
function cs.cs_fboss_atk(dungeonid) end

---@param dungeonlist uint64[] @要领取奖励的关卡列表 
function cs.cs_fboss_draw(dungeonlist) end

---@param dungeonid uint64 @关卡ID 
function cs.cs_fboss_dungeon_detial(dungeonid) end

function cs.cs_fboss_info() end

---@param dungeonid uint64 @关卡ID 
function cs.cs_fboss_passrank(dungeonid) end

---@param dungeonid uint64 @关卡ID 
function cs.cs_fboss_rank(dungeonid) end

---@param dungeonid uint64 @关卡ID 
---@param fight_struct p_fight_struct @战斗结构 
function cs.cs_fboss_report(dungeonid, fight_struct) end

---@param linelist p_lineup[] @选择使用的武将列表 
function cs.cs_fboss_setline(linelist) end

function cs.cs_fcross_battlefield() end

function cs.cs_fcross_challtimes() end

function cs.cs_fcross_definfo() end

function cs.cs_fcross_disposal() end

function cs.cs_fcross_enrol() end

function cs.cs_fcross_familyreplay() end

function cs.cs_fcross_fight() end

function cs.cs_fcross_fightreplay() end

function cs.cs_fcross_getstars() end

function cs.cs_fcross_info() end

function cs.cs_fcross_inspire() end

function cs.cs_fcross_inspireinfo() end

function cs.cs_fcross_markenemy() end

function cs.cs_fcross_open_bfield() end

---@param histid uint64 @战报id 
function cs.cs_fcross_replay(histid) end

function cs.cs_fcross_scorerank() end

function cs.cs_fcross_team() end

function cs.cs_fextreme_box() end

---@param enemyid uint64 @ 对手ID 
function cs.cs_ffight_attack(enemyid) end

function cs.cs_ffight_detail() end

---@param tarid uint64 @ 目标ID 
---@param histid uint64 @ 战报ID 
---@param type uint64 @ 请求类型 
function cs.cs_ffight_hist_with_replay(tarid, histid, type) end

function cs.cs_ffight_preview() end

function cs.cs_ffight_prev_hist_list() end

---@param memberidlist uint64[] @ 参战ID列表 
function cs.cs_ffight_signup(memberidlist) end

---@param neednum uint64 @ 公会数量 
function cs.cs_ffight_tops(neednum) end

---@param initids int64[] @ 
function cs.cs_field_allun(initids) end

---@param equip_initid int64 @ 
---@param un_initid int64 @ 
---@param ger_id int64 @ 
---@param stage int32 @ 初中高三个阶段 
function cs.cs_field_change(equip_initid, un_initid, ger_id, stage) end

---@param initids int64[] @ 
function cs.cs_field_decompose(initids) end

---@param equip_initid1 int64 @ 
---@param equip_initid2 int64 @ 
---@param ger_id int64 @ 
---@param stage int32 @ 初中高三个阶段 
---@param postar1 int32 @ 
---@param postar2 int32 @ 
function cs.cs_field_equip_change(equip_initid1, equip_initid2, ger_id, stage, postar1, postar2) end

function cs.cs_field_info() end

---@param suit_id int64 @ 
---@param initids int64[] @ 
---@param ger_id int64 @ 该领域石携带者ger id 
---@param stage int32 @ 初中高三个阶段 
function cs.cs_field_set(suit_id, initids, ger_id, stage) end

---@param b_mutil uint32 @是否是多个升级 
---@param initids int64[] @ 
---@param lv uint32 @ 
function cs.cs_field_uplv(b_mutil, initids, lv) end

function cs.cs_fight_demo() end

---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_fight_demo_report(fight_struct) end

---@param roleid uint64 @ 对方ID 
function cs.cs_friend_challenge(roleid) end

---@param tar_id uint64[] @ 好友ID 
function cs.cs_friend_delete(tar_id) end

---@param msg_uid uint64 @ 消息UID 
function cs.cs_friend_draw_energy(msg_uid) end

function cs.cs_friend_draw_energy_and_return_onekey() end

---@param msg_uid uint64[] @ 申请消息ID 
---@param option uint64 @ 响应选项 
function cs.cs_friend_handle_apply(msg_uid, option) end

function cs.cs_friend_info() end

---@param read_uid uint64 @ 已读消息最大UID 
function cs.cs_friend_msg(read_uid) end

---@param tar_name string @ 目标名字 
---@param type uint64 @ 搜索类型 
function cs.cs_friend_search(tar_name, type) end

---@param tar_id uint64[] @ 被申请方ID 
function cs.cs_friend_send_apply(tar_id) end

---@param tar_id uint64 @ 好友ID 
function cs.cs_friend_send_energy(tar_id) end

---@param tar_id_list uint64[] @ 好友ID列表 
function cs.cs_friend_send_energy_onekey(tar_id_list) end

---@param tar_id uint64 @ 好友ID 
---@param content string @ 聊天内容 
function cs.cs_friend_send_msg(tar_id, content) end

---@param roleid uint64 @角色ID 
---@param pos uint64 @选择加速的位置 
---@param gerid uint64 @要加速的宝贝ID 
function cs.cs_fschool_accelerate(roleid, pos, gerid) end

function cs.cs_fschool_accelerate_auto() end

function cs.cs_fschool_info() end

---@param pos uint64 @桌子位置 
---@param gerid uint64 @宝贝ID 
function cs.cs_fschool_setger(pos, gerid) end

---@param roleid uint64 @角色ID 
function cs.cs_fschool_viewother(roleid) end

---@param taskid uint64 @ 任务ID 
---@param standlist p_ger_stand[] @ 上阵宝贝id 
function cs.cs_fterritory_fhangup_active(taskid, standlist) end

---@param taskid uint64 @ 任务ID 
function cs.cs_fterritory_fhangup_taskdraw(taskid) end

function cs.cs_fterritory_htask() end

function cs.cs_fterritory_info() end

---@param sellid uint64 @ 商品ID 
---@param buynum uint64 @ 购买数量 
---@param sellpos uint64 @ 商品位置 
function cs.cs_fterritory_shopbuy(sellid, buynum, sellpos) end

---@param tarmanid uint64 @ 目标领地mansionid 
function cs.cs_fterritory_switch(tarmanid) end

---@param respond uint64 @ 回应 
---@param roleid uint64 @ 申请者ID 
function cs.cs_fterritory_switchback(respond, roleid) end

---@param taskid uint64 @ 任务ID 
function cs.cs_fterritory_taskdraw(taskid) end

function cs.cs_fterritory_uplevel() end

function cs.cs_ftiger_draw() end

function cs.cs_ftiger_info() end

function cs.cs_ftiger_play() end

function cs.cs_ftiger_rank() end

function cs.cs_ftiger_refresh() end

---@param gatherid uint64 @ id 
---@param enhanceid uint64 @enhanceid 
function cs.cs_gather_enhance(gatherid, enhanceid) end

---@param gatherid uint64 @ id 
function cs.cs_gather_enhance_reset(gatherid) end

---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_gather_fight_report(fight_struct) end

---@param gatherid uint64 @选择的合体宝贝 
---@param pos uint64 @宝贝所在位置 
---@param level uint64 @选择的战斗难度 
function cs.cs_gather_fight_request(gatherid, pos, level) end

function cs.cs_gather_info() end

---@param npcid uint64 @ id 
function cs.cs_gather_npc_through(npcid) end

---@param npcid uint64 @ id 
function cs.cs_gather_npc_unlock(npcid) end

---@param npcid uint64 @ id 
function cs.cs_gather_npc_uplevel(npcid) end

---@param index uint64 @要选择的属性的索引 
function cs.cs_gercard_chose(index) end

function cs.cs_gercard_clean() end

---@param ger_id_list uint64[] @要查看的宝贝的ID列表 
function cs.cs_gercard_info(ger_id_list) end

function cs.cs_gercard_last() end

---@param ger_id uint64 @宝贝ID 
---@param pos uint64 @位置 
function cs.cs_gercard_unlock(ger_id, pos) end

---@param ger_id uint64 @宝贝ID 
---@param pos uint64 @位置 
---@param type uint64 @洗的类型 
---@param times uint64 @洗的次数 
---@param locked_pos uint64[] @锁定的额外属性索引 
function cs.cs_gercard_wash(ger_id, pos, type, times, locked_pos) end

---@param ger_id uint64 @操作宝贝的gerID 
---@param cloth_id uint64 @购买的时装ID 
---@param buy_type uint64 @购买的档位 
function cs.cs_ger_clothe(ger_id, cloth_id, buy_type) end

function cs.cs_ger_line_list() end

---@param pos uint64 @要解锁的位置 
function cs.cs_ger_line_unlock(pos) end

function cs.cs_ger_list() end

---@param gerid uint64 @ 精灵ID 
---@param pos uint64 @ 目标位置 
---@param type uint64 @ 1 -> 操作的是进攻阵容， 2 -> 操作的是防守阵容 
function cs.cs_ger_movpos(gerid, pos, type) end

---@param tarItemTypeID uint64 @要兑换的将魂碎片ID 
---@param num uint64 @要兑换的个数 
---@param type uint64 @兑换的类型 
function cs.cs_ger_piece_exchange(tarItemTypeID, num, type) end

---@param line p_ger_line_list @要修改的阵容 
function cs.cs_ger_set_line(line) end

---@param gerid uint64 @ 选择的精灵gerid 
---@param stage uint64 @ 要选择的进化阶段 
function cs.cs_ger_stage_chose(gerid, stage) end

---@param gerid uint64 @ 洗练精灵 
---@param stage uint64 @ 进化的阶段 
---@param itemtypeid uint64 @ 使用的碎片TypeID 
function cs.cs_ger_stage_uprank(gerid, stage, itemtypeid) end

---@param gerid uint64 @ 精灵ID 
---@param pos uint64 @ 上阵位置 
---@param type uint64 @ 1 -> 操作的是进攻阵容， 2 -> 操作的是防守阵容 
function cs.cs_ger_standup(gerid, pos, type) end

---@param itemTypeID uint64 @ 要解锁的武将的TypeID 
function cs.cs_ger_unlock(itemTypeID) end

---@param gerid uint64 @ 升级精灵 
---@param foodlist p_money[] @ 吞噬列表 
function cs.cs_ger_uplevel(gerid, foodlist) end

---@param gerid uint64 @ 进阶精灵ID 
function cs.cs_ger_uprank(gerid) end

---@param gerid uint64 @ 洗练精灵 
---@param skillpos uint64 @ 要升级的技能所在的位置 
---@param onekeyup bool @ 是否为一键升级 
function cs.cs_ger_upskill(gerid, skillpos, onekeyup) end

---@param gerid uint64 @ 升级精灵 
function cs.cs_ger_upstar(gerid) end

---@param tar_day int32 @ 待领取的目标天,例如领取第1天的目标天为1 
---@param selectnum uint32 @ 奖励可选个数(0:全部领取1.领取一个) 
---@param rewardidlist uint64[] @ 奖励id数组(玩家自己选择的奖励id) 
function cs.cs_ghandrwd_login_draw(tar_day, selectnum, rewardidlist) end

function cs.cs_ghandrwd_login_info() end

---@param code string @ 礼品码 
function cs.cs_gift_draw(code) end

---@param command string @ 命令 
function cs.cs_gm_test(command) end

---@param guideid uint64 @ 任务ID 
function cs.cs_guide_draw(guideid) end

function cs.cs_guide_list() end

function cs.cs_handshake() end

function cs.cs_heart() end

---@param activityid uint64 @活动id 
---@param drawid uint64 @drawid 
function cs.cs_hegemony_activity_draw(activityid, drawid) end

function cs.cs_hegemony_activity_drawend() end

function cs.cs_hegemony_activity_info() end

---@param target uint64 @ 目标角色ID 
function cs.cs_hegemony_betting_detail(target) end

function cs.cs_hegemony_betting_info() end

---@param target uint64 @ 目标角色ID 
function cs.cs_hegemony_betting_request(target) end

---@param histid uint64 @ 战报ID 
function cs.cs_hegemony_draw_reward(histid) end

---@param exchangeid uint64 @ 兑换ID 
function cs.cs_hegemony_exchange(exchangeid) end

function cs.cs_hegemony_final_info() end

---@param preli_gerid_list uint64[] @ 预赛宝贝 ID 列表 
---@param preli_order_list uint64[] @ 预赛宝贝顺序列表 
---@param final_gerid_list uint64[] @ 决赛宝贝 ID 列表 
---@param final_pos_list uint64[] @ 决赛宝贝站位列表 
function cs.cs_hegemony_gerlist_adjust(preli_gerid_list, preli_order_list, final_gerid_list, final_pos_list) end

function cs.cs_hegemony_gerlist_info() end

function cs.cs_hegemony_hist_info() end

function cs.cs_hegemony_info() end

function cs.cs_hegemony_join_view() end

function cs.cs_hegemony_leave_view() end

function cs.cs_hegemony_preli_info() end

---@param histid uint64 @ 战报ID 
function cs.cs_hegemony_replay_final(histid) end

---@param histid uint64 @ 战报ID 
function cs.cs_hegemony_replay_self(histid) end

function cs.cs_hegemony_signup_info() end

function cs.cs_hegemony_signup_request() end

---@param offset uint64 @ 起始位置(分批请求) 
function cs.cs_hegemony_tops_info(offset) end

---@param type uint64 @ 战报类型 
---@param histid uint64 @ 战报ID 
---@param tarroleid uint64 @ 对方ID 
function cs.cs_hist_share(type, histid, tarroleid) end

---@param histid uint64 @ 战报ID 
function cs.cs_hist_watch(histid) end

function cs.cs_homefight_back() end

function cs.cs_homefight_boss() end

---@param sell_id uint64 @商品ID 
function cs.cs_homefight_buy(sell_id) end

---@param ger_id uint64 @选择的合体宝贝的ID 
function cs.cs_homefight_change_ger(ger_id) end

function cs.cs_homefight_create_team() end

function cs.cs_homefight_dungeon() end

function cs.cs_homefight_fight_boss() end

---@param fort_id uint64 @要查看的据点的ID 
function cs.cs_homefight_fort(fort_id) end

function cs.cs_homefight_info() end

---@param tar_role uint64 @邀请的人的RoleID 
---@param content string @消息内容 
function cs.cs_homefight_invite(tar_role, content) end

---@param tar_role_id uint64 @邀请人的RoleID 
function cs.cs_homefight_join_team(tar_role_id) end

---@param tar_id uint64 @角色ID 
function cs.cs_homefight_kick(tar_id) end

function cs.cs_homefight_leave() end

---@param is_ready bool @是否准备 
function cs.cs_homefight_mark_ready(is_ready) end

---@param tar_pos uint64 @目标位置 
function cs.cs_homefight_move(tar_pos) end

function cs.cs_homefight_new_team() end

function cs.cs_homefight_quick_join() end

---@param fort_id uint64 @据点ID 
---@param pos uint64 @据点中的位置 
---@param fight_struct p_fight_struct @战斗结果 
function cs.cs_homefight_report(fort_id, pos, fight_struct) end

---@param fort_id uint64 @所在据点ID 
---@param pos uint64 @点击的位置 
function cs.cs_homefight_request(fort_id, pos) end

---@param level uint64 @选择的难度 
function cs.cs_homefight_set_level(level) end

---@param is_open bool @是否开放 
function cs.cs_homefight_set_open(is_open) end

function cs.cs_homefight_shop() end

function cs.cs_homefight_start() end

function cs.cs_homefight_team() end

function cs.cs_horse_enter() end

function cs.cs_horse_guessinfo() end

function cs.cs_horse_info() end

---@param trainerid uint64 @ 
---@param count int32 @ 鼓舞次数 
function cs.cs_horse_inspire(trainerid, count) end

function cs.cs_horse_inspireinfo() end

function cs.cs_horse_leave() end

---@param trainerid uint64 @ 
---@param count int32 @ 竞猜次数 
function cs.cs_horse_precom_guess(trainerid, count) end

function cs.cs_horse_real_match() end

function cs.cs_horse_record() end

function cs.cs_horse_selectinfo() end

---@param trainerid uint64 @ 
function cs.cs_horse_selection(trainerid) end

function cs.cs_hotmsg_list() end

---@param type_id uint64 @宝箱type_id 
---@param num uint64 @开启数量 
function cs.cs_item_box_open(type_id, num) end

---@param boxlist p_money[] @ 需要一键开宝箱列表 
function cs.cs_item_box_open_onekey(boxlist) end

---@param box_type_id uint64 @宝箱ID 
---@param reward_id uint64 @奖励ID 
---@param num uint64 @开箱数量 
function cs.cs_item_chosebox_open(box_type_id, reward_id, num) end

---@param box_type_id uint64 @宝箱ID 
function cs.cs_item_chosebox_view(box_type_id) end

---@param typeid uint64 @ 道具typeid 
---@param num uint64 @ 使用数量 
function cs.cs_item_use(typeid, num) end

---@param mailid_list uint64[] @ 需要删除的邮件ID列表 
function cs.cs_mail_delete(mailid_list) end

---@param mailidlist uint64[] @ 准备领取的邮件ID 
---@param bonekey uint64 @ 是否一键领取 
function cs.cs_mail_draw(mailidlist, bonekey) end

function cs.cs_mail_info() end

function cs.cs_mail_more() end

---@param mailid_list uint64[] @ 需要标记已读的邮件ID列表 
---@param bonekey uint64 @ 是否一键读 
function cs.cs_mail_read(mailid_list, bonekey) end

---@param seat_pos uint64 @攻击目标的哪个位置上的玩家 
---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_mine_attack_report(seat_pos, fight_struct) end

---@param seat_pos uint64 @攻击目标的哪个位置上的玩家 
---@param line_list p_lineup[] @攻击时使用的阵容 
function cs.cs_mine_attack_request(seat_pos, line_list) end

---@param pos uint64 @需要购买的矿坑位置 
---@param mineTypeID uint64 @需要购买的矿坑模板ID 
function cs.cs_mine_buy(pos, mineTypeID) end

---@param pos uint64 @自己矿坑的位置 
---@param linelist p_lineup[] @选择使用的武将列表 
function cs.cs_mine_dig(pos, linelist) end

---@param car_pos uint64 @自己的矿车的位置 
function cs.cs_mine_draw(car_pos) end

function cs.cs_mine_explore() end

---@param tar_roleid uint64 @目标角色RoleID 
---@param tar_pos uint64 @目标矿坑位置 
---@param seat_pos uint64 @要坐到哪个位置 
---@param line p_lineup[] @要使用的阵容 
function cs.cs_mine_guard(tar_roleid, tar_pos, seat_pos, line) end

---@param type uint64 @战报类型 
function cs.cs_mine_hist(type) end

function cs.cs_mine_info() end

---@param mine_pos uint64 @矿坑的位置也就是 car_pos 
function cs.cs_mine_invite(mine_pos) end

---@param msg_id uint64 @ 消息ID 
function cs.cs_mine_join_view(msg_id) end

---@param car_pos uint64 @要开矿坑的位置 
function cs.cs_mine_open(car_pos) end

---@param pos uint64 @要做刷新的矿坑的位置 
function cs.cs_mine_refresh(pos) end

---@param roleid uint64 @要查看的矿的人的roleid 
---@param car_pos uint64 @要查看的他哪个矿车 
---@param seat_pos uint64 @查看的矿车内的具体位置 
function cs.cs_mine_view(roleid, car_pos, seat_pos) end

---@param line_list p_lineup[] @阵容 
function cs.cs_mine_view_reward(line_list) end

---@param typeid uint64 @ 模板ID 
---@param number uint64 @ 货币数量 
function cs.cs_money_buy(typeid, number) end

function cs.cs_money_info() end

---@param typeid uint64[] @ 模板ID 
---@param number uint64[] @ 开启数量 
function cs.cs_money_openbox(typeid, number) end

---@param moneylist p_money[] @ 要出售的物品列表 
function cs.cs_money_sell(moneylist) end

function cs.cs_notice_msg() end

---@param rwdid uint64 @ 奖励ID 
function cs.cs_onlinerwd_draw(rwdid) end

function cs.cs_onlinerwd_info() end

function cs.cs_pay_first_draw() end

function cs.cs_pay_info() end

function cs.cs_pay_offline_ensure() end

---@param pay_type uint64 @ 充值类型 
---@param amount_rmbfen uint64 @ 充值额度(分) 
---@param giftTypeID uint64 @ 礼包的TypeID 
function cs.cs_pay_test(pay_type, amount_rmbfen, giftTypeID) end

function cs.cs_perterr_announce() end

---@param prod_id int64 @生成器id 
function cs.cs_perterr_collect(prod_id) end

---@param stage uint64 @ 展示某进化阶段的形象 
function cs.cs_perterr_foster(stage) end

function cs.cs_perterr_fosterdraw() end

function cs.cs_perterr_friend() end

---@param prod_id int64 @生成器id 
function cs.cs_perterr_getprod(prod_id) end

function cs.cs_perterr_getskill() end

---@param roleid uint64 @玩家ID 
function cs.cs_perterr_info(roleid) end

---@param tar_id uint64 @ 好友ID 
---@param content string @ 聊天内容 
function cs.cs_perterr_invite_foster(tar_id, content) end

function cs.cs_perterr_openshop() end

---@param prod_id int64 @生成器id 
function cs.cs_perterr_prod_uplv(prod_id) end

function cs.cs_perterr_rcle_uplv() end

function cs.cs_perterr_recycle() end

function cs.cs_perterr_skilluplv() end

function cs.cs_perterr_switch_title() end

function cs.cs_perterr_tupo() end

---@param gerinitid uint64 @ 宝贝初始ID 
---@param foodlist p_money[] @ 食物列表 
function cs.cs_pokdex_feed(gerinitid, foodlist) end

function cs.cs_pokdex_info() end

---@param gerinitid uint64 @ 宝贝初始ID 
function cs.cs_pokdex_onekey_feed(gerinitid) end

---@param gerinitid uint64 @ 宝贝初始ID 
function cs.cs_pokdex_uprank(gerinitid) end

function cs.cs_powerrank_list() end

function cs.cs_powerrank_open() end

---@param bten uint32 @是否10次 
---@param count uint64 @祈福的次数 
function cs.cs_pray_do(bten, count) end

---@param score uint64 @要领取的断的积分 
function cs.cs_pray_draw(score) end

function cs.cs_pray_info() end

---@param rank_start uint64 @开始位置 
---@param rank_end uint64 @结束位置 
function cs.cs_pray_rank(rank_start, rank_end) end

---@param equipid uint64 @ 镶嵌到具体的gerid上 
---@param pos uint64 @ 刻印所在对应装备的某个位置 
---@param preciousid uint64 @ 被镶嵌的刻印id 
function cs.cs_precious_imbue(equipid, pos, preciousid) end

function cs.cs_precious_info() end

---@param preciousid uint64 @ 刻印id 
function cs.cs_precious_unload(preciousid) end

---@param preciousid uint64 @需要升级的刻印id 
---@param cost_ids uint64[] @消耗刻印的id列表 
function cs.cs_precious_uprank(preciousid, cost_ids) end

function cs.cs_pvp_actpoint_draw() end

function cs.cs_pvp_actpoint_onekey() end

function cs.cs_pvp_actpoint_reward() end

function cs.cs_pvp_cool_erase() end

---@param roleid uint64 @ 目标玩家ID 
---@param rank uint64 @ 目标玩家排名 
function cs.cs_pvp_fight(roleid, rank) end

function cs.cs_pvp_fight_buy() end

function cs.cs_pvp_fight_replay() end

function cs.cs_pvp_get_list() end

function cs.cs_pvp_hist_list() end

function cs.cs_pvp_onekey_worship() end

---@param rankid uint64 @ 排行ID 
function cs.cs_pvp_rank_draw(rankid) end

function cs.cs_pvp_rank_reward() end

function cs.cs_pvp_refresh() end

---@param typeid uint64 @ 选中的宝贝typeid 
---@param stage uint64 @ 展示某进化阶段的形象 
function cs.cs_pvp_show_icon(typeid, stage) end

function cs.cs_pvp_top_list() end

---@param rank uint64 @ 膜拜的玩家排名 
function cs.cs_pvp_worship(rank) end

function cs.cs_renvelope_info() end

---@param envelopeid uint64 @ 红包id 
function cs.cs_renvelope_rob(envelopeid) end

function cs.cs_renvelope_xhd() end

function cs.cs_rmbgift_info() end

---@param buy_cnt uint64 @ 购买次数 
function cs.cs_role_buy_energy(buy_cnt) end

---@param buy_cnt uint64 @ 购买次数 
function cs.cs_role_buy_mineenergy(buy_cnt) end

---@param buy_cnt uint64 @ 购买次数 
function cs.cs_role_buy_skillpoint(buy_cnt) end

---@param click_cnt uint64 @ 请求点金次数 
function cs.cs_role_click_gold(click_cnt) end

---@param typeid uint64 @ 类型ID 
---@param number uint64 @ 使用数量 
function cs.cs_role_exp_effect(typeid, number) end

function cs.cs_role_extra() end

---@param tarid uint64 @ 对方ID 
function cs.cs_role_fighters(tarid) end

function cs.cs_role_firstatk_update() end

function cs.cs_role_info() end

function cs.cs_role_openhcard() end

---@param key_list uint64[] @ 键列表 
function cs.cs_role_options(key_list) end

---@param roleidlist uint64[] @ 角色ID列表 
function cs.cs_role_public(roleidlist) end

function cs.cs_role_rename() end

---@param newicon uint64 @ 新头像ID 
---@param icon_type int32 @ 头像类型(1:普通玩家头像,2:普通宝贝头像,3:特殊头像) 
function cs.cs_role_seticon(newicon, icon_type) end

---@param key uint64 @ 键 
---@param value sint64 @ 值 
function cs.cs_role_setopt(key, value) end

---@param type uint64 @ 游戏类型 
---@param times uint64 @ 购买次数 
function cs.cs_sgame_buytimes(type, times) end

---@param type uint64 @游戏类型 
---@param id uint64 @积分奖励ID 
function cs.cs_sgame_draw(type, id) end

---@param type uint64 @ 游戏类型 
function cs.cs_sgame_enter(type) end

---@param type uint64 @小游戏类型 
function cs.cs_sgame_info(type) end

---@param type uint64 @ 游戏类型 
function cs.cs_sgame_onekey(type) end

---@param type uint64 @ 游戏类型 
---@param points uint64 @获得积分 
---@param numbers uint64 @获得宝箱数量 
---@param lists rwd_id_and_number[] @获取奖励数量列表(备注：类型4中的碎片只需配置基础碎片即可) 
function cs.cs_sgame_over(type, points, numbers, lists) end

---@param type uint64 @小游戏类型 
function cs.cs_sgame_reward(type) end

---@param shopid uint64 @ 商店ID 
---@param sellid uint64 @ 商品ID 
---@param neednum uint64 @ 购买数量 
---@param sellpos uint64 @ 商品位置 
function cs.cs_shop_buy(shopid, sellid, neednum, sellpos) end

function cs.cs_shop_list() end

---@param shopid uint64 @ 商店ID 
function cs.cs_shop_refresh(shopid) end

function cs.cs_shop_wake_onedraw() end

function cs.cs_shop_wake_tendraw() end

function cs.cs_sign_draw() end

function cs.cs_sign_draw_add() end

function cs.cs_sign_info() end

---@param statue p_statue @ 需激活的对应雕像信息 
function cs.cs_statue_active(statue) end

function cs.cs_statue_areainfo() end

function cs.cs_statue_info() end

function cs.cs_statue_rateinfo() end

function cs.cs_statue_unlock() end

---@param offset uint64 @ 偏移量 
function cs.cs_sysrank_advstar(offset) end

---@param familyid uint64 @ 工会id 
function cs.cs_sysrank_family_summary(familyid) end

---@param offset uint64 @ 偏移量 
function cs.cs_sysrank_fightpower(offset) end

---@param offset uint64 @ 偏移量 
function cs.cs_sysrank_gerpokdex(offset) end

---@param offset uint64 @ 偏移量 
function cs.cs_sysrank_topfamily(offset) end

---@param offset uint64 @ 偏移量 
function cs.cs_sysrank_topger(offset) end

function cs.cs_talk_msg_list() end

---@param content string @ 发送内容 
function cs.cs_talk_send_msg(content) end

function cs.cs_talk_set_shield() end

function cs.cs_task_daily() end

---@param taskid uint64 @ 任务ID 
function cs.cs_task_draw(taskid) end

---@param type uint64 @ 任务类型 
function cs.cs_task_one_draw(type) end

function cs.cs_task_trunk() end

function cs.cs_test_message() end

---@param typeid uint64 @要选择的训练师的typeid 
---@param type uint64 @对应的是防守阵容还是进攻阵容 
function cs.cs_trainer_chose(typeid, type) end

function cs.cs_trainer_info() end

---@param typeid uint64 @要解锁的训练师的typeid 
function cs.cs_trainer_unlock(typeid) end

---@param buffid uint64 @ 要购买的buff id 
---@param times uint64 @ 要购买的次数 
---@param gerid uint64 @ 复活宝贝id 
function cs.cs_trial_buff_buy(buffid, times, gerid) end

---@param dunid uint64 @ 挑战关卡ID 
---@param ctype uint64 @ 挑战的难度类型 
---@param geridlist uint64[] @ 宝贝ID列表 
---@param poslist uint64[] @ 宝贝站位列表 
---@param trainerid uint64 @ 训练师ID 
function cs.cs_trial_challenge(dunid, ctype, geridlist, poslist, trainerid) end

---@param fight_struct p_fight_struct @ 战斗结构 
function cs.cs_trial_challenge_back(fight_struct) end

function cs.cs_trial_fj_leave() end

---@param stage uint64 @ 领取的积分阶段 
function cs.cs_trial_hsr_draw(stage) end

function cs.cs_trial_hsr_info() end

function cs.cs_trial_info() end

---@param select uint64 @ 选择类型 
function cs.cs_trial_jump(select) end

function cs.cs_trial_next_lv() end

function cs.cs_trial_score_rank() end

function cs.cs_trial_tbox_fixreward() end

---@param type uint64 @ 开宝箱类型 
---@param boxid uint64 @ 宝箱id 
function cs.cs_trial_tbox_open(type, boxid) end

---@param version string @ 版本号 
function cs.cs_version(version) end

---@param typeid uint64 @ 领取的礼包ID 
function cs.cs_vip_gift(typeid) end

function cs.cs_vip_info() end

---@param typeid uint64 @ 类型ID 
---@param number uint64 @ 使用数量 
function cs.cs_vip_item_effect(typeid, number) end

function cs.cs_wheel_config() end

---@param score uint64 @要领取的档位积分 
function cs.cs_wheel_draw(score) end

function cs.cs_wheel_info() end

function cs.cs_wheel_lucky_man() end

---@param type uint64 @几连抽 
function cs.cs_wheel_play(type) end

function cs.cs_wheel_rank_list() end

function cs.cs_wheel_state() end
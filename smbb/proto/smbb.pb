
“ó

smbb.proto"
cs_handshake"À
sc_handshake
mix_1 (Rmix1
arg_a (RargA
mix_2 (Rmix2
arg_b (RargB
mix_3 (Rmix3
arg_m (RargM
mix_4 (Rmix4
arg_x (RargX
mix_5	 (Rmix5"

cs_heart"&
sc_heart
unixtime (Runixtime"&

cs_version
version (	Rversion"$

sc_version
result (Rresult"
	cs_config"0
	sc_config#
cfglist (2	.p_configRcfglist"2
p_config
key (Rkey
value (Rvalue"
sc_reset_zero"9
p_reward-
	moneylist (2.p_reward_moneyR	moneylist"@
p_reward_money
typeid (Rtypeid
number (Rnumber"&

cs_gm_test
command (	Rcommand"$

sc_gm_test
result (Rresult"è
p_attr
attack (Rattack
maxhp (Rmaxhp
phydef (Rphydef
magdef (Rmagdef
critp (Rcritp!
critp_reduce (RcritpReduce
critv (Rcritv!
critv_reduce (RcritvReduce
blockp	 (Rblockp#
blockp_reduce
 (RblockpReduce
blockv (Rblockv
hitp (Rhitp
miss (Rmiss#
damage_deepen (RdamageDeepen#
damage_reduce (RdamageReduce
backhpv (Rbackhpv
absorbp (Rabsorbp
absorbv (Rabsorbv
bouncep (Rbouncep
bouncev (Rbouncev

attackaddn (R
attackaddn
	maxhpaddn (R	maxhpaddn
atktohp (Ratktohp
speed (Rspeed"Ü
p_evolve
stage (Rstage
rank (Rrank
ischose (Rischose
clothes (Rclothes
	expiresec (R	expiresec"g
p_skill
pos (Rpos
level (Rlevel
stage (Rstage

extralevel (R
extralevel"
cs_notice_msg";
sc_notice_msg*
notice_list (2	.p_noticeR
noticeList"‰
p_notice
	notice_id (RnoticeId!
notice_title (	RnoticeTitle%
notice_content (	RnoticeContent

notice_pic (	R	noticePic*
notice_start_time (RnoticeStartTime&
notice_end_time (RnoticeEndTime""
cs_gift_draw
code (	Rcode"I
sc_gift_draw
result (Rresult!
reward (2	.p_rewardRreward"j
list_broadcast_msg
id (Rid
type (Rtype
args (	Rargs
	timestamp (R	timestamp"B
sc_broadcast_msg.
list_msg (2.list_broadcast_msgRlistMsg"‹
cs_account_login
accid (Raccid
accname (	Raccname
deadline (Rdeadline
ticket (	Rticket
svrid (Rsvrid
srctype (Rsrctype
mac (	Rmac
devid (	Rdevid
phone_model	 (	R
phoneModel
sys_version
 (	R
sysVersion
subtype (Rsubtype
ip_info (	RipInfo
fc_type (RfcType"B
sc_account_login
result (Rresult
rstate (Rrstate"=
cs_account_create
rname (	Rrname
icon (Ricon"+
sc_account_create
result (Rresult")
sc_account_kick
result (Rresult"
cs_role_info"8
sc_role_info(
roleinfo (2.p_role_infoRroleinfo"õ
p_role_info
roleid (Rroleid
rolename (	Rrolename
raccid (Rraccid
accname (	Raccname
familyid (Rfamilyid

familyname (	R
familyname
icon (Ricon
rolelv (Rrolelv
roleexp	 (Rroleexp
viplv
 (Rviplv
vipexp (Rvipexp
atkpower (Ratkpower
defpower (Rdefpower
	lastlogin (R	lastlogin

lastlogout (R
lastlogout
srctype (Rsrctype
subtype (	Rsubtype
	totalpaid (R	totalpaid
frame (Rframe
regtime (Rregtime"F
sc_role_exp_notify
rolelv (Rrolelv
roleexp (Rroleexp"0
cs_role_public

roleidlist (R
roleidlist"@
sc_role_public.

publiclist (2.p_role_publicR
publiclist"…
p_role_public
roleid (Rroleid
rolename (	Rrolename
familyid (Rfamilyid

familyname (	R
familyname
icon (Ricon
rolelv (Rrolelv
viplv (Rviplv
atkpower (Ratkpower
defpower	 (Rdefpower

lastlogout
 (R
lastlogout
frame (Rframe
pvprank (Rpvprank"
cs_role_extra"<
sc_role_extra+
	roleextra (2.p_role_extraR	roleextra"©
p_role_extra
roleid (Rroleid
energy (Renergy(
energy_next_recv (RenergyNextRecv(
energy_buy_times (RenergyBuyTimes
skill_point (R
skillPoint1
skill_point_next_recv (RskillPointNextRecv1
skill_point_buy_times (RskillPointBuyTimes(
click_gold_times (RclickGoldTimes
firstatk	 (Rfirstatk
mine_energy
 (R
mineEnergy1
mine_energy_next_recv (RmineEnergyNextRecv1
mine_energy_buy_times (RmineEnergyBuyTimes
	icon_list (RiconList$
cd_time_rename (RcdTimeRename"Y
sc_role_energy_notify
energy (Renergy(
energy_next_recv (RenergyNextRecv"N
sc_role_power_notify
atkpower (Ratkpower
defpower (Rdefpower",
cs_role_options
key_list (RkeyList"7
sc_role_options$
opt_list (2	.p_optionRoptList"2
p_option
key (Rkey
value (Rvalue"8
cs_role_setopt
key (Rkey
value (Rvalue"P
sc_role_setopt
result (Rresult
key (Rkey
value (Rvalue"H
cs_role_seticon
newicon (Rnewicon
	icon_type (RiconType"C
sc_role_seticon
result (Rresult
newicon (Rnewicon"-
cs_role_buy_energy
buy_cnt (RbuyCnt"n
sc_role_buy_energy
result (Rresult
energy (Renergy(
energy_buy_times (RenergyBuyTimes"D
cs_role_exp_effect
typeid (Rtypeid
number (Rnumber"D
sc_role_exp_effect
result (Rresult
sumexp (Rsumexp"(
cs_role_fighters
tarid (Rtarid"∂
sc_role_fighters 
atklist (2.p_gerRatklist 
deflist (2.p_gerRdeflist&
	equiplist (2.p_equipR	equiplist
atkspeed (Ratkspeed
defspeed (Rdefspeed"m
sc_role_skillpoint_notify

skillpoint (R
skillpoint0
skillpoint_next_recv (RskillpointNextRecv"1
cs_role_click_gold
	click_cnt (RclickCnt"ö
sc_role_click_gold
result (Rresult&
new_click_times (RnewClickTimes
crit (Rcrit
critnum (Rcritnum
reward (Rreward"5
sc_role_firstatk_update
firstatk (Rfirstatk"1
cs_role_buy_skillpoint
buy_cnt (RbuyCnt"Ç
sc_role_buy_skillpoint
result (Rresult

skillpoint (R
skillpoint0
skillpoint_buy_times (RskillpointBuyTimes"
cs_role_firstatk_update"m
sc_role_mineenergy_notify

mineenergy (R
mineenergy0
mineenergy_next_recv (RmineenergyNextRecv"1
cs_role_buy_mineenergy
buy_cnt (RbuyCnt"Ç
sc_role_buy_mineenergy
result (Rresult

mineenergy (R
mineenergy0
mineenergy_buy_times (RmineenergyBuyTimes"+
cs_role_rename
new_name (	RnewName"\
sc_role_rename
result (Rresult
new_name (	RnewName
cd_time (RcdTime"5
cs_role_openhcard 
head_card_id (R
headCardId"k
sc_role_openhcard
result (Rresult
	icon_list (RiconList!
reward (2	.p_rewardRreward"˜
p_fight_attr
inithp (Rinithp
attack (Rattack
phydef (Rphydef
magdef (Rmagdef
critp (Rcritp!
critp_reduce (RcritpReduce
critv (Rcritv!
critv_reduce (RcritvReduce
blockp	 (Rblockp#
blockp_reduce
 (RblockpReduce
blockv (Rblockv
hitp (Rhitp
miss (Rmiss#
damage_deepen (RdamageDeepen#
damage_reduce (RdamageReduce
backhpv (Rbackhpv
atktohp (Ratktohp
absorbp (Rabsorbp
absorbv (Rabsorbv
bouncep (Rbouncep
bouncev (Rbouncev
	restrainv (R	restrainv
speed (Rspeed"K
p_fight_skill
skill_id (RskillId
skill_level (R
skillLevel"É
p_fight_dgmon
pos (Rpos
typeid (Rtypeid
kind (	Rkind
level (Rlevel
rank (Rrank
star (Rstar!
attr (2.p_fight_attrRattr
hp (Rhp!
battle_power	 (RbattlePower1
enter_skills
 (2.p_fight_skillRenterSkills1
fight_skills (2.p_fight_skillRfightSkills1
condi_skills (2.p_fight_skillRcondiSkills<
super_enter_skills (2.p_fight_skillRsuperEnterSkills<
super_fight_skills (2.p_fight_skillRsuperFightSkills<
super_condi_skills (2.p_fight_skillRsuperCondiSkills7
transform_skill (2.p_fight_skillRtransformSkill.
transform_max_round (RtransformMaxRound*
transform_type_id (RtransformTypeId
is_boss (RisBoss*
base_evolve_level (RbaseEvolveLevel

boom_skill (R	boomSkill

show_stage (R	showStage
clothes (Rclothes
	is_coward (RisCoward"W
p_fight_sumer
pos (Rpos
	cur_round (RcurRound
cur_out (RcurOut"¥
p_fight_struct
seed (Rseed&
max_round_limit (RmaxRoundLimit-

dgmon_list (2.p_fight_dgmonR	dgmonList-

sumer_list (2.p_fight_sumerR	sumerList/
dgmon_list2 (2.p_fight_dgmonR
dgmonList2/
sumer_list2 (2.p_fight_sumerR
sumerList2/
dgmon_list3 (2.p_fight_dgmonR
dgmonList3/
sumer_list3 (2.p_fight_sumerR
sumerList3-

poshp_list	 (2.p_fight_poshpR	poshpList
total_round
 (R
totalRound
atk_trainer (R
atkTrainer
def_trainer (R
defTrainer
	is_verify (RisVerify
is_atk_auto (R	isAtkAuto
is_def_auto (R	isDefAuto

fight_type (R	fightType!
battle_index (RbattleIndex#
atk_teamspeed (RatkTeamspeed#
def_teamspeed (RdefTeamspeed
atk_mp (RatkMp
left_mp (RleftMp
right_mp (RrightMp"
cs_fight_demo"C
sc_fight_demo2
fight_struct (2.p_fight_structRfightStruct"J
cs_fight_demo_report2
fight_struct (2.p_fight_structRfightStruct"H
p_fight_poshp
pos (Rpos
hp (Rhp
max_hp (RmaxHp"
cs_shop_list"Ó
sc_shop_list#
shoplist (2.p_shopRshoplist
freesec (Rfreesec

bide_times (R	bideTimes
one_gold (RoneGold 
one_gold_dis (R
oneGoldDis
ten_gold (RtenGold 
ten_gold_dis (R
tenGoldDis"
one_dis_start (RoneDisStart
one_dis_end	 (R	oneDisEnd"
ten_dis_start
 (RtenDisStart
ten_dis_end (R	tenDisEnd"Ë
p_shop
shopid (Rshopid
nextref (Rnextref
refneed (Rrefneed
endtime (Rendtime
sells1 (2.p_sellRsells1
sells2 (2.p_sellRsells2
reftype (Rreftype
	shopmoney (R	shopmoney"R
p_sell
sellid (Rsellid
buyneed (Rbuyneed
buynum (Rbuynum"Ö
sc_shop_notify!
newlist (2.p_shopRnewlist'

updatelist (2.p_shopR
updatelist'

deletelist (2.p_shopR
deletelist"q
cs_shop_buy
shopid (Rshopid
sellid (Rsellid
neednum (Rneednum
sellpos (Rsellpos"%
sc_shop_buy
result (Rresult")
cs_shop_refresh
shopid (Rshopid")
sc_shop_refresh
result (Rresult"
cs_shop_wake_onedraw"ä
sc_shop_wake_onedraw
result (Rresult!
reward (2	.p_rewardRreward

bide_times (R	bideTimes
freesec (Rfreesec"
cs_shop_wake_tendraw"Q
sc_shop_wake_tendraw
result (Rresult!
reward (2	.p_rewardRreward"
cs_ger_list"y
sc_ger_list 
gerlist (2.p_gerRgerlist#
atklist (2	.p_lineupRatklist#
deflist (2	.p_lineupRdeflist"∂
p_ger
gerid (Rgerid
typeid (Rtypeid
star (Rstar
rank (Rrank
level (Rlevel
exp (Rexp!
evolve (2	.p_evolveRevolve
pos (Rpos
attr	 (2.p_attrRattr
skill
 (2.p_skillRskill

fightpower (R
fightpower

show_stage (R	showStage"Å
sc_ger_notify 
newlist (2.p_gerRnewlist&

updatelist (2.p_gerR
updatelist&

deletelist (2.p_gerR
deletelist"/
cs_ger_unlock

itemTypeID (R
itemTypeID"A
sc_ger_unlock
result (Rresult
ger (2.p_gerRger"L
cs_ger_standup
gerid (Rgerid
pos (Rpos
type (Rtype"(
sc_ger_standup
result (Rresult"K
cs_ger_movpos
gerid (Rgerid
pos (Rpos
type (Rtype"'
sc_ger_movpos
result (Rresult"L
cs_ger_uplevel
gerid (Rgerid$
foodlist (2.p_moneyRfoodlist"(
sc_ger_uplevel
result (Rresult"%
cs_ger_uprank
gerid (Rgerid"'
sc_ger_uprank
result (Rresult"%
cs_ger_upstar
gerid (Rgerid"'
sc_ger_upstar
result (Rresult"^
cs_ger_upskill
gerid (Rgerid
skillpos (Rskillpos
onekeyup (Ronekeyup"(
sc_ger_upskill
result (Rresult"a
cs_ger_stage_uprank
gerid (Rgerid
stage (Rstage

itemtypeid (R
itemtypeid"-
sc_ger_stage_uprank
result (Rresult"@
cs_ger_stage_chose
gerid (Rgerid
stage (Rstage",
sc_ger_stage_chose
result (Rresult"2
p_lineup
pos (Rpos
gerid (Rgerid"K
sc_ger_line_notify
type (Rtype!
lineup (2	.p_lineupRlineup"c
cs_ger_piece_exchange$
tarItemTypeID (RtarItemTypeID
num (Rnum
type (Rtype"/
sc_ger_piece_exchange
result (Rresult"Ü
p_ger_summary
typeid (Rtypeid
star (Rstar
rank (Rrank
level (Rlevel
pos (Rpos 
normalstage (Rnormalstage
gerid (Rgerid

show_stage (R	showStage
clothes	 (Rclothes
	expiresec
 (R	expiresec":
p_line_summary(
gerlist (2.p_ger_summaryRgerlist"_
p_ger_line_list
pos (Rpos
name (	Rname&
	line_list (2	.p_lineupRlineList"7
cs_ger_set_line$
line (2.p_ger_line_listRline"V
sc_ger_set_line
result (Rresult+
new_line (2.p_ger_line_listRnewLine"
cs_ger_line_list"?
sc_ger_line_list+
all_line (2.p_ger_line_listRallLine"&
cs_ger_line_unlock
pos (Rpos"Y
sc_ger_line_unlock
result (Rresult+
new_line (2.p_ger_line_listRnewLine"\
cs_ger_clothe
ger_id (RgerId
cloth_id (RclothId
buy_type (RbuyType"'
sc_ger_clothe
result (Rresult"ç
p_mail
mailid (Rmailid
tempid (Rtempid
content (	Rcontent!
reward (2	.p_rewardRreward
isread (Risread
drawed (Rdrawed
	timestamp (R	timestamp
subtype (Rsubtype
title	 (	Rtitle
autoget
 (Rautoget"
cs_mail_info"S
sc_mail_info$
	mail_list (2.p_mailRmailList

unrecv_num (R	unrecvNum"
cs_mail_more"S
sc_mail_more$
	mail_list (2.p_mailRmailList

unrecv_num (R	unrecvNum"I
cs_mail_read
mailid_list (R
mailidList
bonekey (Rbonekey"/
sc_mail_read
mailid_list (R
mailidList"H
cs_mail_draw

mailidlist (R
mailidlist
bonekey (Rbonekey"i
sc_mail_draw
result (Rresult

mailidlist (R
mailidlist!
reward (2	.p_rewardRreward"1
cs_mail_delete
mailid_list (R
mailidList"1
sc_mail_delete
mailid_list (R
mailidList"3
sc_mail_new$
	mail_list (2.p_mailRmailList"

cs_equip"2
sc_equip&
	equiplist (2.p_equipR	equiplist"∞
p_equip
equipid (Requipid
typeid (Rtypeid
rank (Rrank
exp (Rexp
level (Rlevel
star (Rstar
pos (Rpos
gerid (Rgerid
attr	 (2.p_attrRattr6
precious_info
 (2.p_equip_preciousRpreciousInfo&
destinys (2
.p_destinyRdestinys"â
sc_equip_notify"
newlist (2.p_equipRnewlist(

updatelist (2.p_equipR
updatelist(

deletelist (2.p_equipR
deletelist"D
cs_equip_uplevel
equipid (Requipid
onekey (Ronekey"*
sc_equip_uplevel
result (Rresult"+
cs_equip_uprank
equipid (Requipid")
sc_equip_uprank
result (Rresult"+
cs_equip_upstar
equipid (Requipid")
sc_equip_upstar
result (Rresult"N
cs_equip_eat
equipid (Requipid$
foodlist (2.p_moneyRfoodlist"&
sc_equip_eat
result (Rresult"Z
p_equip_precious
pos (Rpos

preciousid (R
preciousid
tmpid (Rtmpid"?
	p_destiny
	destinyid (R	destinyid
level (Rlevel"
cs_money_info"7
sc_money_info&
	moneylist (2.p_moneyR	moneylist"9
p_money
typeid (Rtypeid
number (Rnumber"â
sc_money_notify"
newlist (2.p_moneyRnewlist(

updatelist (2.p_moneyR
updatelist(

deletelist (2.p_moneyR
deletelist"B
cs_money_openbox
typeid (Rtypeid
number (Rnumber"M
sc_money_openbox
result (Rresult!
reward (2	.p_rewardRreward"7
cs_money_sell&
	moneylist (2.p_moneyR	moneylist"J
sc_money_sell
result (Rresult!
reward (2	.p_rewardRreward">
cs_money_buy
typeid (Rtypeid
number (Rnumber"I
sc_money_buy
result (Rresult!
reward (2	.p_rewardRreward"
cs_pvp_get_list"¨
sc_pvp_get_list
rank (Rrank 
pvplist (2.p_pvpRpvplist
pvptimes (Rpvptimes
buytimes (Rbuytimes
cooltime (Rcooltime

worshipids (R
worshipids'
showicon (2.p_showiconRshowicon"
refcost (2.p_moneyRrefcost"
eracost	 (2.p_moneyReracost"í
p_pvp
roleid (Rroleid
icon (Ricon
rolename (	Rrolename
rank (Rrank
defpower (Rdefpower

familyname (	R
familyname
	beworship (R	beworship
ischa (Rischa'
showicon	 (2.p_showiconRshowicon
viplv
 (Rviplv":
cs_pvp_fight
roleid (Rroleid
rank (Rrank"›
sc_pvp_fight
result (Rresult
newrank (Rnewrank)

dropreward (2	.p_rewardR
dropreward2
fight_struct (2.p_fight_structRfightStruct
pvptimes (Rpvptimes 
pvplist (2.p_pvpRpvplist
atkpvp (2.p_pvpRatkpvp
defpvp (2.p_pvpRdefpvp
cooltime	 (Rcooltime"
eracost
 (2.p_moneyReracost"
cs_pvp_refresh"n
sc_pvp_refresh
result (Rresult 
pvplist (2.p_pvpRpvplist"
refcost (2.p_moneyRrefcost"
cs_pvp_top_list"3
sc_pvp_top_list 
pvplist (2.p_pvpRpvplist"
cs_pvp_fight_buy"~
sc_pvp_fight_buy
result (Rresult
pvptimes (Rpvptimes
buytimes (Rbuytimes
cooltime (Rcooltime"
cs_pvp_cool_erase"O
sc_pvp_cool_erase
result (Rresult"
eracost (2.p_moneyReracost"»

p_pvp_hist
type (Rtype
	tarroleid (R	tarroleid
tarname (	Rtarname
tarlv (Rtarlv
firstatk (Rfirstatk
fightsec (Rfightsec
result (Rresult
replayid (Rreplayid
icon	 (Ricon

fightpower
 (R
fightpower
	rankdelta (R	rankdelta
tarviplv (Rtarviplv"
cs_pvp_hist_list"`
sc_pvp_hist_list%
atkhist (2.p_pvp_histRatkhist%
defhist (2.p_pvp_histRdefhist"1
cs_pvp_fight_replay
replayid (Rreplayid"â
sc_pvp_fight_replay2
fight_struct (2.p_fight_structRfightStruct
atkpvp (2.p_pvpRatkpvp
defpvp (2.p_pvpRdefpvp"
cs_pvp_rank_reward"í
sc_pvp_rank_reward!
history_rank (RhistoryRank(

reward_acc (2	.p_rewardR	rewardAcc/
rank_reward (2.p_rank_rewardR
rankReward"}
p_rank_reward
rankid (Rrankid!
reward (2	.p_rewardRreward
state (Rstate
	need_rank (RneedRank"*
cs_pvp_rank_draw
rankid (Rrankid"¿
sc_pvp_rank_draw
result (Rresult
rankid (Rrankid!
reward (2	.p_rewardRreward(

reward_acc (2	.p_rewardR	rewardAcc/
rank_reward (2.p_rank_rewardR
rankReward"
cs_pvp_actpoint_reward"q
sc_pvp_actpoint_reward
actpoint (Ractpoint;
actpoint_reward (2.p_actpoint_rewardRactpointReward"Ö
p_actpoint_reward
pointid (Rpointid

need_point (R	needPoint!
reward (2	.p_rewardRreward
state (Rstate"0
cs_pvp_actpoint_draw
pointid (Rpointid"®
sc_pvp_actpoint_draw
result (Rresult
pointid (Rpointid!
reward (2	.p_rewardRreward;
actpoint_reward (2.p_actpoint_rewardRactpointReward"
cs_pvp_actpoint_onekey"ê
sc_pvp_actpoint_onekey!
reward (2	.p_rewardRreward;
actpoint_reward (2.p_actpoint_rewardRactpointReward
result (Rresult"$
cs_pvp_worship
rank (Rrank"§
sc_pvp_worship
result (Rresult!
reward (2	.p_rewardRreward7
worshipupdate (2.p_worship_updateRworshipupdate

worshipids (R
worshipids"
cs_pvp_onekey_worship"´
sc_pvp_onekey_worship
result (Rresult!
reward (2	.p_rewardRreward7
worshipupdate (2.p_worship_updateRworshipupdate

worshipids (R
worshipids"D
p_worship_update
rank (Rrank
	beworship (R	beworship"@
cs_pvp_show_icon
typeid (Rtypeid
stage (Rstage"S
sc_pvp_show_icon
result (Rresult'
showicon (2.p_showiconRshowicon"r

p_showicon
typeid (Rtypeid
stage (Rstage
clothid (Rclothid
	expiresec (R	expiresec"
cs_trainer_info"=
sc_trainer_info*

unlocklist (2
.p_trainerR
unlocklist"+
cs_trainer_unlock
typeid (Rtypeid"+
sc_trainer_unlock
result (Rresult">
cs_trainer_chose
typeid (Rtypeid
type (Rtype"*
sc_trainer_chose
result (Rresult"[
	p_trainer
typeid (Rtypeid
atkchose (Ratkchose
defchose (Rdefchose"
cs_box_info"M
sc_box_info
result (Rresult&
box_info (2.p_box_infoRboxInfo"0
cs_box_select
select_type (R
selectType" 
sc_box_select
result (Rresult
select_type (R
selectType.
reward_list (2.p_box_rewardR
rewardList&
box_info (2.p_box_infoRboxInfo(

fix_reward (2	.p_rewardR	fixReward"»

p_box_info
one_item (RoneItem
ten_item (RtenItem
hun_item (RhunItem$
gold_free_cool (RgoldFreeCool&
item_free_times (RitemFreeTimes$
item_free_cool (RitemFreeCool
one_gold (RoneGold
ten_gold (RtenGold 
gold_ten_dis	 (R
goldTenDis&
gold_free_times
 (RgoldFreeTimes 
gold_one_dis (R
goldOneDis!
mystery_gold (RmysteryGold
mystery_dis (R
mysteryDis"
one_dis_start (RoneDisStart
one_dis_end (R	oneDisEnd"
ten_dis_start (RtenDisStart
ten_dis_end (R	tenDisEnd"
mys_dis_start (RmysDisStart
mys_dis_end (R	mysDisEnd

mys_hot_id (RmysHotId%
bide_lefttimes (RbideLefttimes"A
cs_box_open_treasurebox
boxid (Rboxid
num (Rnum"T
sc_box_open_treasurebox
result (Rresult!
reward (2	.p_rewardRreward"Ü
p_box_reward!
reward (2	.p_rewardRreward
	gertypeid (R	gertypeid
stage (Rstage
reward_type (R
rewardType"
cs_hegemony_info">
sc_hegemony_info
state (Rstate
ijoin (Rijoin"
cs_hegemony_signup_info"£
sc_hegemony_signup_info!
signup_state (RsignupState.
champion (2.p_hegemony_structRchampion#
signup_number (RsignupNumber!
signup_limit (RsignupLimit%
hegemony_start (RhegemonyStart!
hegemony_end (RhegemonyEnd#
betting_state (RbettingState"Â
p_hegemony_struct
roleid (Rroleid*
baseinfo (2.p_role_publicRbaseinfo,
	prelilist (2.p_ger_summaryR	prelilist,
	finallist (2.p_ger_summaryR	finallist%
betting_number (RbettingNumber
	win_count (RwinCount

lose_count (R	loseCount
points (Rpoints
rank	 (Rrank!
betting_rate
 (RbettingRate"
cs_hegemony_signup_request"4
sc_hegemony_signup_request
result (Rresult"
cs_hegemony_gerlist_info"v
sc_hegemony_gerlist_info,
	prelilist (2.p_ger_summaryR	prelilist,
	finallist (2.p_ger_summaryR	finallist"¿
cs_hegemony_gerlist_adjust(
preli_gerid_list (RpreliGeridList(
preli_order_list (RpreliOrderList(
final_gerid_list (RfinalGeridList$
final_pos_list (RfinalPosList"4
sc_hegemony_gerlist_adjust
result (Rresult"
cs_hegemony_betting_info"s
sc_hegemony_betting_info#
betting_state (RbettingState2

candidates (2.p_hegemony_structR
candidates"4
cs_hegemony_betting_detail
target (Rtarget"`
sc_hegemony_betting_detail
result (Rresult*
detail (2.p_hegemony_structRdetail"5
cs_hegemony_betting_request
target (Rtarget"5
sc_hegemony_betting_request
result (Rresult"
cs_hegemony_preli_info"¡
sc_hegemony_preli_info
round (Rround!
round_endsec (RroundEndsec3
	hist_list (2.p_hegemony_preli_histRhistList9
result_list (2.p_hegemony_preli_resultR
resultList"ò
sc_hegemony_preli_notify:
add_hist_list (2.p_hegemony_preli_histRaddHistList@
add_result_list (2.p_hegemony_preli_resultRaddResultList"
cs_hegemony_final_info"¡
sc_hegemony_final_info
round (Rround!
round_endsec (RroundEndsec3
	hist_list (2.p_hegemony_final_histRhistList9
vsinfo_list (2.p_hegemony_final_vsinfoR
vsinfoList"V
sc_hegemony_final_notify:
add_hist_list (2.p_hegemony_final_histRaddHistList"
cs_hegemony_hist_info"’
sc_hegemony_hist_info>
preli_hist_list (2.p_hegemony_preli_histRpreliHistList>
final_hist_list (2.p_hegemony_final_histRfinalHistList<
final_hist_all (2.p_hegemony_final_histRfinalHistAll"/
cs_hegemony_tops_info
offset (Roffset"y
sc_hegemony_tops_info/
	tops_list (2.p_hegemony_structRtopsList/
	self_info (2.p_hegemony_structRselfInfo"Ÿ
p_hegemony_preli_hist
atk_id (RatkId
def_id (RdefId
atk_name (	RatkName
def_name (	RdefName
atk_icon (RatkIcon
def_icon (RdefIcon
result (Rresult
draw_box (RdrawBox
round	 (Rround
histid
 (Rhistid'
replay (2.p_fight_structRreplay
	timestamp (R	timestamp"I
p_hegemony_preli_result.
baseinfo (2.p_hegemony_structRbaseinfo"Ÿ
p_hegemony_final_hist
atk_id (RatkId
def_id (RdefId
atk_name (	RatkName
def_name (	RdefName
atk_icon (RatkIcon
def_icon (RdefIcon
result (Rresult
draw_box (RdrawBox
round	 (Rround
histid
 (Rhistid'
replay (2.p_fight_structRreplay
	timestamp (R	timestamp"w
p_hegemony_final_vsinfo-
atk_info (2.p_hegemony_structRatkInfo-
def_info (2.p_hegemony_structRdefInfo"1
cs_hegemony_replay_self
histid (Rhistid"Z
sc_hegemony_replay_self
result (Rresult'
replay (2.p_fight_structRreplay"2
cs_hegemony_replay_final
histid (Rhistid"[
sc_hegemony_replay_final
result (Rresult'
replay (2.p_fight_structRreplay"6
cs_hegemony_exchange

exchangeid (R
exchangeid"Q
sc_hegemony_exchange
result (Rresult!
reward (2	.p_rewardRreward"0
sc_hegemony_state_update
state (Rstate"1
cs_hegemony_draw_reward
histid (Rhistid"T
sc_hegemony_draw_reward
result (Rresult!
reward (2	.p_rewardRreward"
cs_hegemony_activity_info"µ
sc_hegemony_activity_info
endtime (Rendtime'
activity (2.p_activityRactivity
drawtime (Rdrawtime!
reward (2	.p_rewardRreward
isdraw (Risdraw"S
cs_hegemony_activity_draw

activityid (R
activityid
drawid (Rdrawid"X
sc_hegemony_activity_draw
result (Rresult#
newact (2.p_activityRnewact"
cs_hegemony_activity_drawend"Y
sc_hegemony_activity_drawend
result (Rresult!
reward (2	.p_rewardRreward"F
sc_hegemony_activity_notify'
activity (2.p_activityRactivity"
cs_hegemony_join_view"
cs_hegemony_leave_view"
cs_onlinerwd_info"|
sc_onlinerwd_info
haverwd (Rhaverwd
cdown (Rcdown
rwdid (Rrwdid!
reward (2	.p_rewardRreward")
cs_onlinerwd_draw
rwdid (Rrwdid"+
sc_onlinerwd_draw
result (Rresult"5
cs_battle_info#
battleid_list (RbattleidList"<
sc_battle_info*
battle_list (2	.p_battleR
battleList"Â
p_battle
battleid (Rbattleid
progress (Rprogress-
chapter_list (2
.p_chapterRchapterList
maxstory (Rmaxstory
is_open (RisOpen
	cha_times (RchaTimes 
last_cha_sec (R
lastChaSec"1
cs_battle_chapter
	chapterid (R	chapterid"9
sc_battle_chapter$
chapter (2
.p_chapterRchapter"î
	p_chapter
	chapterid (R	chapterid
	startotal (R	startotal
	rewardcnt (R	rewardcnt-
dungeon_list (2
.p_dungeonRdungeonList"¿
	p_dungeon
	dungeonid (R	dungeonid
	cha_times (RchaTimes
	starcount (R	starcount
	rewardcnt (R	rewardcnt
	cha_total (RchaTotal
reset_times (R
resetTimes">
sc_battle_update*
battle_list (2	.p_battleR
battleList"7
cs_battle_fight_request
	dungeonid (R	dungeonid"Ù
sc_battle_fight_request
result (Rresult
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct3
drop_reward_view (2	.p_rewardRdropRewardView
	addrolexp (R	addrolexp
	addgerexp (R	addgerexp"j
cs_battle_fight_report
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"ç
sc_battle_fight_report
result (Rresult
	dungeonid (R	dungeonid!
attacker_win (RattackerWin
	starcount (R	starcount
	addrolexp (R	addrolexp
	addgerexp (R	addgerexp!
reward (2	.p_rewardRreward

star_array (R	starArray"8
cs_battle_chapter_reward
	chapterid (R	chapterid"s
sc_battle_chapter_reward
result (Rresult
	chapterid (R	chapterid!
reward (2	.p_rewardRreward"8
cs_battle_dungeon_reward
	dungeonid (R	dungeonid"s
sc_battle_dungeon_reward
result (Rresult
	dungeonid (R	dungeonid!
reward (2	.p_rewardRreward"R
cs_battle_fight_sweep
	dungeonid (R	dungeonid
	sweep_num (RsweepNum"™
sc_battle_fight_sweep
result (Rresult
	dungeonid (R	dungeonid$
real_sweep_num (RrealSweepNum
	sweep_num (RsweepNum
	addrolexp (R	addrolexp
	addgerexp (R	addgerexp.
normal_reward (2	.p_rewardRnormalReward,
extra_reward (2	.p_rewardRextraReward"5
cs_battle_story_fight
	dungeonid (R	dungeonid"Å
sc_battle_story_fight
result (Rresult
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"é
cs_battle_fight_request2
	dungeonid (R	dungeonid
	geridlist (R	geridlist
poslist (Rposlist
	trainerid (R	trainerid"Ñ
sc_battle_fight_request2
result (Rresult
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"k
cs_battle_fight_report2
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"ı
sc_battle_fight_report2
result (Rresult
	dungeonid (R	dungeonid!
attacker_win (RattackerWin
	starcount (R	starcount!
reward (2	.p_rewardRreward

star_array (R	starArray!
passing_rate (RpassingRate"S
cs_battle_fight_sweep2
	dungeonid (R	dungeonid
	sweep_num (RsweepNum"¥
sc_battle_fight_sweep2
result (Rresult
	dungeonid (R	dungeonid$
real_sweep_num (RrealSweepNum
	sweep_num (RsweepNum!
reward (2	.p_rewardRreward"5
cs_battle_fight_reset
	dungeonid (R	dungeonid"\
sc_battle_fight_reset
result (Rresult+
new_dungeon (2
.p_dungeonR
newDungeon"4
cs_battle_fight_line2
	battle_id (RbattleId"S
sc_battle_fight_line2
	battle_id (RbattleId
line (2	.p_lineupRline"W
cs_battle_fight_set_line2
	battle_id (RbattleId
line (2	.p_lineupRline"R
sc_battle_fight_set_line2
result (Rresult
line (2	.p_lineupRline"
cs_battle_activity_list"9
p_battle_args
type (Rtype
value (Rvalue"D
sc_battle_activity_list)
arg_list (2.p_battle_argsRargList"=
cs_item_box_open
type_id (RtypeId
num (Rnum"M
sc_item_box_open
result (Rresult!
reward (2	.p_rewardRreward"=
cs_item_box_open_onekey"
boxlist (2.p_moneyRboxlist"l
sc_item_box_open_onekey
result (Rresult
number (Rnumber!
reward (2	.p_rewardRreward"f
cs_item_chosebox_open
box_type_id (R	boxTypeId
	reward_id (RrewardId
num (Rnum"R
sc_item_chosebox_open
result (Rresult!
reward (2	.p_rewardRreward"7
cs_item_chosebox_view
box_type_id (R	boxTypeId"b
sc_item_chosebox_view
result (Rresult1
reward_list (2.p_item_choseboxR
rewardList"P
p_item_chosebox
rewardid (Rrewardid!
reward (2	.p_rewardRreward"7
cs_item_use
typeid (Rtypeid
num (Rnum"%
sc_item_use
result (Rresult"
cs_ghandrwd_login_info"é
sc_ghandrwd_login_info

start_time (R	startTime
end_time (RendTime

login_days (R	loginDays
drawlist (Rdrawlist
desc (	Rdesc
title (	Rtitle
reward (2.p_viewRreward
openlv (Ropenlv
	openviplv	 (R	openviplv"s
cs_ghandrwd_login_draw
tar_day (RtarDay
	selectnum (R	selectnum"
rewardidlist (Rrewardidlist"S
sc_ghandrwd_login_draw
result (Rresult!
reward (2	.p_rewardRreward"\
sc_ghandrwd_login_update

login_days (R	loginDays!
new_drawlist (RnewDrawlist"[
p_view
day (Rday!
reward (2	.p_rewardRreward
	selectnum (R	selectnum"
cs_task_trunk"4
sc_task_trunk#
tasklist (2.p_taskRtasklist"
cs_task_daily"4
sc_task_daily#
tasklist (2.p_taskRtasklist"Ü
p_task
taskid (Rtaskid
progress (Rprogress
subtid (Rsubtid
trigger (Rtrigger
endsec (Rendsec"Ö
sc_task_notify!
newlist (2.p_taskRnewlist'

updatelist (2.p_taskR
updatelist'

deletelist (2.p_taskR
deletelist"&
cs_task_draw
taskid (Rtaskid"I
sc_task_draw
result (Rresult!
reward (2	.p_rewardRreward"&
cs_task_one_draw
type (Rtype"M
sc_task_one_draw
result (Rresult!
reward (2	.p_rewardRreward"
cs_activity_preview"<
sc_activity_preview%
prelist (2.p_activiewRprelist"±

p_actiview
actid (Ractid
name (	Rname
class (Rclass
icon (	Ricon
endtime (Rendtime
priority (Rpriority
is_kaifu (RisKaifu"ï
sc_activity_notify%
newlist (2.p_activiewRnewlist+

updatelist (2.p_activiewR
updatelist+

deletelist (2.p_activiewR
deletelist"*
cs_activity_info
idlist (Ridlist"9
sc_activity_info%
actlist (2.p_activityRactlist"

p_activity
actid (Ractid
name (	Rname
class (Rclass
icon (	Ricon
endtime (Rendtime
refresh (Rrefresh
desc (	Rdesc'
drawlist (2.p_actidrawRdrawlist
args	 (2
.p_actiargRargs(
	condition
 (2
.p_actiargR	condition
	starttime (R	starttime
priority (Rpriority
is_kaifu (RisKaifu"œ

p_actidraw
drawid (Rdrawid
desc (	Rdesc
numlimit (Rnumlimit(
	condition (2
.p_actiargR	condition!
reward (2	.p_rewardRreward
state (Rstate
number (Rnumber"5
	p_actiarg
type (Rtype
value (Rvalue"@
cs_activity_draw
actid (Ractid
drawid (Rdrawid"O
sc_activity_draw
result (Rresult#
newact (2.p_activityRnewact",
cs_activity_czjj_buy
actid (Ractid"D
sc_activity_czjj_buy
result (Rresult
actid (Ractid"
cs_activity_active_view"E
sc_activity_activy_view*
weeklist (2.p_active_weekRweeklist"≤
p_active_week
title (	Rtitle
	starttime (R	starttime
endtime (Rendtime*
dayslist (2.p_active_daysRdayslist'
	shipmoney (2	.p_rewardR	shipmoney"Ü
p_active_days
title (	Rtitle'
drawlist (2.p_actidrawRdrawlist
	starttime (R	starttime
endtime (Rendtime"
cs_activity_kaifu"Æ
sc_acitivity_kaifu
endtime (Rendtime'
activity (2.p_activityRactivity
drawtime (Rdrawtime!
reward (2	.p_rewardRreward
isdraw (Risdraw"P
cs_activity_kaifu_draw

activityid (R
activityid
drawid (Rdrawid"U
sc_activity_kaifu_draw
result (Rresult#
newact (2.p_activityRnewact"
cs_activity_kaifu_drawend"V
sc_activity_kaifu_drawend
result (Rresult!
reward (2	.p_rewardRreward"D
sc_acitivity_kaifu_notify'
activity (2.p_activityRactivity"
cs_vip_info")
sc_vip_info
info (2.p_vipRinfo"\
p_vip
viplv (Rviplv
points (Rpoints%
gift (2.p_vip_gift_timesRgift"8
p_vip_gift_times
type (Rtype
num (Rnum"+
sc_vip_update
info (2.p_vipRinfo"%
cs_vip_gift
typeid (Rtypeid"H
sc_vip_gift
result (Rresult!
reward (2	.p_rewardRreward"D
cs_vip_item_effect
typeid (Rtypeid
number (Rnumber"â
sc_vip_item_effect
result (Rresult
	add_viplv (RaddViplv

add_points (R	addPoints
add_overdue (R
addOverdue"ô
p_family
familyid (Rfamilyid

familyname (	R
familyname
familylv (Rfamilylv

familycons (R
familycons$
techlist (2.p_ftechRtechlist

techpoints (R
techpoints
notice (	Rnotice
whatup (	Rwhatup
create_time	 (R
createTime
	chairname
 (	R	chairname
active (Ractive#
floglist (2.p_flogRfloglist!
donate_times (RdonateTimes

joinneedlv (R
joinneedlv$
joinneedagree (Rjoinneedagree
rank (Rrank&
lastrecruitsec (Rlastrecruitsec"3
p_ftech
type (Rtype
level (Rlevel"T
p_flog
type (Rtype
content (	Rcontent
	timestamp (R	timestamp"“
p_family_summary
familyid (Rfamilyid

familyname (	R
familyname
familylv (Rfamilylv
whatup (	Rwhatup
	membernum (R	membernum
	chairname (	R	chairname
chairid (Rchairid

totalpower (R
totalpower

joinneedlv	 (R
joinneedlv$
joinneedagree
 (Rjoinneedagree
rank (Rrank"Ê
p_fmember_public*
baseinfo (2.p_role_publicRbaseinfo
title (Rtitle
	totalcons (R	totalcons
	todaycons (R	todaycons)
atkline (2.p_line_summaryRatkline)
defline (2.p_line_summaryRdefline"
cs_family_info"›
sc_family_info
result (Rresult)

familyinfo (2	.p_familyR
familyinfo+
members (2.p_fmember_publicRmembers
lastquit (Rlastquit
	applylist (R	applylist!
donate_times (RdonateTimes"*
cs_family_list
pagenum (Rpagenum"C
sc_family_list1

familylist (2.p_family_summaryR
familylist"&
cs_family_search
name (	Rname"E
sc_family_search1

familylist (2.p_family_summaryR
familylist"b
cs_family_create

familyname (	R
familyname
notice (	Rnotice
whatup (	Rwhatup"Ç
sc_family_create
result (Rresult)

familyinfo (2	.p_familyR
familyinfo+
members (2.p_fmember_publicRmembers"2
cs_family_send_apply
familyid (Rfamilyid"9
cs_family_send_apply_fast
	tarroleid (R	tarroleid".
sc_family_send_apply
result (Rresult"E
sc_family_apply_notify+
newapply (2.p_family_applyRnewapply"¥
p_family_apply
roleid (Rroleid
	timestamp (R	timestamp
rname (	Rrname
level (Rlevel
nonolv (Rnonolv
power (Rpower
icon (Ricon"
cs_family_apply_list"]
sc_family_apply_list
result (Rresult-
	applylist (2.p_family_applyR	applylist"J
cs_family_handle_apply
applyid (Rapplyid
option (Roption"H
sc_family_handle_apply
result (Rresult
option (Roption"4
cs_family_cancel_apply
familyid (Rfamilyid"0
sc_family_cancel_apply
result (Rresult"1
sc_family_cancel_notify
roleid (Rroleid"1
sc_family_handle_notify
roleid (Rroleid"/
sc_family_join_notify
roleid (Rroleid"q
sc_family_agreed_notify)

familyinfo (2	.p_familyR
familyinfo+
members (2.p_fmember_publicRmembers"6
sc_family_refused_notify
familyid (Rfamilyid"(
cs_family_kick
roleid (Rroleid"(
sc_family_kick
result (Rresult"
sc_family_kicked_notify"
cs_family_quit"(
sc_family_quit
result (Rresult"D
sc_family_update_notify)

familyinfo (2	.p_familyR
familyinfo"D
sc_fmember_new_notify+
newlist (2.p_fmember_publicRnewlist"1
sc_fmember_del_notify
dellist (Rdellist"M
sc_fmember_update_notify1

updatelist (2.p_fmember_publicR
updatelist"B
cs_family_manage
option (Roption
roleid (Rroleid"*
sc_family_manage
result (Rresult"a
sc_family_manage_notify
option (Roption
roleid (Rroleid
ctrlid (Rctrlid"
cs_family_dissolve",
sc_family_dissolve
result (Rresult"7
sc_family_dissolve_notify
familyid (Rfamilyid"@
cs_family_edit
notice (	Rnotice
whatup (	Rwhatup"(
sc_family_edit
result (Rresult"G
sc_family_edit_notify
notice (	Rnotice
whatup (	Rwhatup"W
sc_fmember_state_trans_notify
roleid (Rroleid

lastlogout (R
lastlogout"&
cs_family_donate
type (Rtype"a
sc_family_donate
result (Rresult
type (Rtype!
reward (2	.p_rewardRreward"j
sc_family_cons_notify
newlv (Rnewlv
newcons (Rnewcons!
donate_times (RdonateTimes".
cs_family_upgrade_techlv
type (Rtype"2
sc_family_upgrade_techlv
result (Rresult"a
sc_family_tech_notify(

changelist (2.p_ftechR
changelist

techpoints (R
techpoints"?
sc_family_log_notify'

addloglist (2.p_flogR
addloglist"∫
p_family_msg
type (Rtype
uid (Ruid
time (Rtime
src_id (RsrcId
src_name (	RsrcName
content (	Rcontent
icon (Ricon
vip (Rvip"
cs_family_msg_list"Ç
sc_family_msg_list
result (Rresult)
chatlist (2.p_family_msgRchatlist)
sysmlist (2.p_family_msgRsysmlist"A
sc_family_msg_notify)
chatlist (2.p_family_msgRchatlist".
cs_family_send_msg
content (	Rcontent",
sc_family_send_msg
result (Rresult"C
sc_family_activepoints_notify"
activepoints (Ractivepoints"
cs_family_impeach_info"Ç
sc_family_impeach_info
result (Rresult
deadline (Rdeadline
vote_num (RvoteNum
is_voted (RisVoted"
cs_family_impeach_start"1
sc_family_impeach_start
result (Rresult"
cs_family_impeach_vote"0
sc_family_impeach_vote
result (Rresult"l
sc_family_impeach_notify
deadline (Rdeadline
vote_num (RvoteNum
is_voted (RisVoted"[
sc_family_impeach_success

oldchairid (R
oldchairid

newchairid (R
newchairid"Y
cs_family_setarg

joinneedlv (R
joinneedlv%
join_needagree (RjoinNeedagree"q
sc_family_setarg
result (Rresult

joinneedlv (R
joinneedlv%
join_needagree (RjoinNeedagree"
cs_family_quick_join".
sc_family_quick_join
result (Rresult"
cs_family_recruit"S
sc_family_recruit
result (Rresult&
lastrecruitsec (Rlastrecruitsec"5
cs_family_view_other

tar_roleid (R	tarRoleid"S
sc_family_view_other
result (Rresult#
tar (2.p_fmember_publicRtar"7
cs_family_send_member_mail
chat_msg (	RchatMsg"4
sc_family_send_member_mail
result (Rresult"ò
p_family_role_packet
typeid (Rtypeid
rolename (	Rrolename
packetid (Rpacketid
leftnum (Rleftnum
isdraw (Risdraw"T
p_family_get_packet
rolename (	Rrolename!
reward (2	.p_rewardRreward"H
p_family_sent_packet
typeid (Rtypeid
sentnum (Rsentnum"«
p_family_packet
type (Rtype 
packettimes (Rpackettimes

packetgold (R
packetgold

packetnums (R
packetnums&
packetbestRole (	RpacketbestRole
isdraw (Risdraw"
cs_family_packet_info"Ö
sc_family_packet_info5
family_packet (2.p_family_packetRfamilyPacket6
sent_pakcet (2.p_family_sent_packetR
sentPakcet?
role_send_packet (2.p_family_role_packetRroleSendPacket<
role_get_packet (2.p_family_get_packetRroleGetPacket"1
cs_family_packet_drawfamily
type (Rtype"X
sc_family_packet_drawfamily
result (Rresult!
reward (2	.p_rewardRreward".
cs_family_sendpacket
typeid (Rtypeid"Q
sc_family_sendpacket
result (Rresult!
reward (2	.p_rewardRreward"7
cs_family_packet_drawrole
packetid (Rpacketid"V
sc_family_packet_drawrole
result (Rresult!
reward (2	.p_rewardRreward"
cs_family_packet_ranklist"N
sc_family_packet_ranklist1
ranklist (2.p_family_packet_rankRranklist"|
p_family_packet_rank
rank (Rrank
rolename (	Rrolename
sentnum (Rsentnum
costgold (Rcostgold"á
sc_family_packet_notify5
family_packet (2.p_family_packetRfamilyPacket6
sent_pakcet (2.p_family_sent_packetR
sentPakcet?
role_send_packet (2.p_family_role_packetRroleSendPacket<
role_get_packet (2.p_family_get_packetRroleGetPacket"
cs_fboss_info"˚
sc_fboss_info
result (Rresult"
curdungeonid (Rcurdungeonid#
nowhp_percent (RnowhpPercent#
gerlist (2	.p_lineupRgerlist
addattr (Raddattr"
leftatktimes (Rleftatktimes&
drawdungeonids (Rdrawdungeonids"7
cs_fboss_dungeon_detial
	dungeonid (R	dungeonid"…
sc_fboss_dungeon_detial
result (Rresult#
nowhp_percent (RnowhpPercent)
ranklist (2.p_fboss3rankRranklist$
lastatkroleid (Rlastatkroleid 
lastatktime (Rlastatktime"g
p_fboss3rank

familyname (	R
familyname#
nowhp_percent (RnowhpPercent
rank (Rrank"-
cs_fboss_rank
	dungeonid (R	dungeonid"R
sc_fboss_rank
result (Rresult)
ranklist (2.p_fboss_rankRranklist"\
p_fboss_rank
rank (Rrank
rolename (	Rrolename
	harmvalue (R	harmvalue"1
cs_fboss_passrank
	dungeonid (R	dungeonid"Z
sc_fboss_passrank
result (Rresult-
ranklist (2.p_fboss_passrankRranklist"`
p_fboss_passrank
rank (Rrank

familyname (	R
familyname
passsec (Rpasssec",
cs_fboss_atk
	dungeonid (R	dungeonid"æ
sc_fboss_atk
result (Rresult
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"
curatkroleid (Rcuratkroleid 
lastatktime (Rlastatktime"c
cs_fboss_report
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"œ
sc_fboss_report
result (Rresult
	dungeonid (R	dungeonid!
attacker_win (RattackerWin!
reward (2	.p_rewardRreward!
harm_percent (RharmPercent

harm_value (R	harmValue"1
cs_fboss_draw 
dungeonlist (Rdungeonlist"l
sc_fboss_draw
result (Rresult!
reward (2	.p_rewardRreward 
dungeonlist (Rdungeonlist"9
cs_fboss_setline%
linelist (2	.p_lineupRlinelist"Q
sc_fboss_setline
result (Rresult%
linelist (2	.p_lineupRlinelist"X
sc_fboss_sync"
curdungeonid (Rcurdungeonid#
nowhp_percent (RnowhpPercent"
cs_ffight_preview")
sc_ffight_preview
state (Rstate"
cs_ffight_detail"¢
sc_ffight_detail
state (Rstate
etime (Retime
isign (Risign$
self (2.p_ffight_familyRself&
enemy (2.p_ffight_familyRenemy"ø
p_ffight_family
platform (Rplatform
serverid (Rserverid
fname (	Rfname
score (Rscore
rating (Rrating0

memberlist (2.p_ffight_memberR
memberlist"¿
p_ffight_member*
baseinfo (2.p_role_publicRbaseinfo
winstar (Rwinstar
ownstar (Rownstar!
attack_times (RattackTimes*
histlist (2.p_ffight_histRhistlist"Ë
p_ffight_hist
histid (Rhistid
type (Rtype
atkname (	Ratkname
defname (	Rdefname
result (Rresult'
replay (2.p_fight_structRreplay
addstar (Raddstar
	timestamp (R	timestamp"^
cs_ffight_hist_with_replay
tarid (Rtarid
histid (Rhistid
type (Rtype"H
sc_ffight_hist_with_replay*
histinfo (2.p_ffight_histRhistinfo"_
sc_ffight_member_update
type (Rtype0

updatelist (2.p_ffight_memberR
updatelist"6
cs_ffight_signup"
memberidlist (Rmemberidlist"*
sc_ffight_signup
result (Rresult",
cs_ffight_attack
enemyid (Renemyid"p
sc_ffight_attack
result (Rresult
addstar (Raddstar*
histlist (2.p_ffight_histRhistlist"
cs_ffight_prev_hist_list"h
sc_ffight_prev_hist_list$
self (2.p_ffight_familyRself&
enemy (2.p_ffight_familyRenemy"*
cs_ffight_tops
neednum (Rneednum"9
sc_ffight_tops'
toplist (2.p_ffight_topRtoplist"Ü
p_ffight_top
platform (Rplatform
serverid (Rserverid
fname (	Rfname
score (Rscore
rank (Rrank"
cs_pay_info"[
sc_pay_info&
first_pay_state (RfirstPayState$
paid_case_list (RpaidCaseList"m
cs_pay_test
pay_type (RpayType#
amount_rmbfen (RamountRmbfen

giftTypeID (R
giftTypeID"•
sc_pay_notify
result (Rresult!
reward (2	.p_rewardRreward
pay_type (RpayType
pay_case (RpayCase#
amount_rmbfen (RamountRmbfen"
cs_pay_first_draw"P
sc_pay_first_draw
result (Rresult#
rewards (2	.p_rewardRrewards"
cs_pay_offline_ensure"‚

p_talk_msg
type (Rtype
uid (Ruid
time (Rtime
src_id (RsrcId
src_name (	RsrcName
content (	Rcontent
icon (Ricon
frame (Rframe
vip	 (Rvip
args
 (Rargs"
cs_talk_msg_list"[
sc_talk_msg_list'
chatlist (2.p_talk_msgRchatlist

shieldlist (R
shieldlist"=
sc_talk_msg_notify'
chatlist (2.p_talk_msgRchatlist"@
cs_talk_send_msg
type (Rtype
content (	Rcontent">
sc_talk_send_msg
type (Rtype
result (Rresult"R
cs_talk_set_shield
bcancel (Rbcancel"
shieldroleid (Rshieldroleid"L
sc_talk_set_shield
result (Rresult

shieldlist (R
shieldlist"
cs_fbird_info"£
sc_fbird_info
	leftTimes (R	leftTimes
	todaybest (R	todaybest
rolebest (Rrolebest
coin (Rcoin
gold (Rgold
card (Rcard"
cs_fbird_rank":
sc_fbird_rank)
ranklist (2.p_fbird_rankRranklist"T
p_fbird_rank
rank (Rrank
rolename (	Rrolename
score (Rscore"a
cs_fbird_draw
score (Rscore
coin (Rcoin
gold (Rgold
card (Rcard"c
sc_fbird_draw
result (Rresult
coin (Rcoin
gold (Rgold
card (Rcard"
cs_fschool_info"°
sc_fschool_info&
acceleratetime (Racceleratetime$
desks (2.p_fshool_deskRdesks
	rolenames (	R	rolenames"
cansendroles (Rcansendroles"B
p_fshool_desk
pos (Rpos
ger (2.p_school_gerRger"æ
p_school_ger
gerid (Rgerid
level (Rlevel
exp (Rexp
typeid (Rtypeid 
normalstage (Rnormalstage
clothes (Rclothes
	expiresec (R	expiresec";
cs_fschool_setger
pos (Rpos
gerid (Rgerid"V
sc_fschool_setger
result (Rresult)
new_desk (2.p_fshool_deskRnewDesk".
cs_fschool_viewother
roleid (Rroleid"~
sc_fschool_viewother
result (Rresult(
acceleratedtime (Racceleratedtime$
desks (2.p_fshool_deskRdesks"W
cs_fschool_accelerate
roleid (Rroleid
pos (Rpos
gerid (Rgerid"õ
sc_fschool_accelerate
result (Rresult
	tarroleid (R	tarroleid)
new_desk (2.p_fshool_deskRnewDesk!
reward (2	.p_rewardRreward"
cs_fschool_accelerate_auto"z
sc_fschool_accelerate_auto
result (Rresult!
tar_rolename (	RtarRolename!
reward (2	.p_rewardRreward"
cs_guide_list"7
sc_guide_list&
	guidelist (2.p_guideR	guidelist"Y
p_guide
guideid (Rguideid
progress (Rprogress
trigger (Rtrigger"â
sc_guide_notify"
newlist (2.p_guideRnewlist(

updatelist (2.p_guideR
updatelist(

deletelist (2.p_guideR
deletelist")
cs_guide_draw
guideid (Rguideid"J
sc_guide_draw
result (Rresult!
reward (2	.p_rewardRreward"
cs_achieve_foster"A
sc_achieve_foster,
achievelist (2
.p_achieveRachievelist"
cs_achieve_adventure"D
sc_achieve_adventure,
achievelist (2
.p_achieveRachievelist"
cs_achieve_activity"C
sc_achieve_activity,
achievelist (2
.p_achieveRachievelist"ã
	p_achieve
	achieveid (R	achieveid
progress (Rprogress
subaid (Rsubaid
state (Rstate
numacc (Rnumacc"ë
sc_achieve_notify$
newlist (2
.p_achieveRnewlist*

updatelist (2
.p_achieveR
updatelist*

deletelist (2
.p_achieveR
deletelist"/
cs_achieve_draw
	achieveid (R	achieveid"A
sc_achieve_draw
result (Rresult
subaid (Rsubaid"
cs_achieve_one_draw"M
sc_achieve_one_draw
result (Rresult

subaidlist (R
subaidlist"
cs_pokdex_info"O
sc_pokdex_info
result (Rresult%
pokdexes (2	.p_pokdexRpokdexes"∞
p_pokdex
	gerinitid (R	gerinitid
pokrank (Rpokrank
poklevel (Rpoklevel
pokfavor (Rpokfavor
fatkacc (Rfatkacc
isuprank (Risuprank"T
cs_pokdex_feed
	gerinitid (R	gerinitid$
foodlist (2.p_moneyRfoodlist"(
sc_pokdex_feed
result (Rresult"5
cs_pokdex_onekey_feed
	gerinitid (R	gerinitid"/
sc_pokdex_onekey_feed
result (Rresult"0
cs_pokdex_uprank
	gerinitid (R	gerinitid"*
sc_pokdex_uprank
result (Rresult"ç
sc_pokdex_notify#
newlist (2	.p_pokdexRnewlist)

updatelist (2	.p_pokdexR
updatelist)

deletelist (2	.p_pokdexR
deletelist"
cs_trial_info"B
sc_trial_info1
result (Rresult
jumpdun (Rjumpdun"(
sc_trial_info2
result (Rresult"ö
p_trial
curdun (Rcurdun
curscore (Rcurscore
chatimes (Rchatimes
	curmorale (R	curmorale
hisscore (Rhisscore!
addattr (2.p_attrRaddattr
deadlist (Rdeadlist
tbox (2.p_tboxRtbox#
bufflist	 (2.p_buffRbufflist
	gertypeid
 (R	gertypeid 
monlist (2.p_monRmonlist
state (Rstate
bdunids (Rbdunids
ctype (Rctype"1
sc_trial_update
trial (2.p_trialRtrial"'
cs_trial_jump
select (Rselect"å
sc_trial_jump
result (Rresult
type (Rtype
score (Rscore
morale (Rmorale!
reward (2	.p_rewardRreward"ñ
cs_trial_challenge
dunid (Rdunid
ctype (Rctype
	geridlist (R	geridlist
poslist (Rposlist
	trainerid (R	trainerid"`
sc_trial_challenge
result (Rresult2
fight_struct (2.p_fight_structRfightStruct"M
cs_trial_challenge_back2
fight_struct (2.p_fight_structRfightStruct"â
sc_trial_challenge_back
result (Rresult
star (Rstar
isend (Risend
vipadd (Rvipadd
iswin (Riswin"W
cs_trial_buff_buy
buffid (Rbuffid
times (Rtimes
gerid (Rgerid"+
sc_trial_buff_buy
result (Rresult"<
p_buff
buffid (Rbuffid
buytimes (Rbuytimes">
cs_trial_tbox_open
type (Rtype
boxid (Rboxid"m
sc_trial_tbox_open
result (Rresult!
reward (2	.p_rewardRreward
	opentimes (R	opentimes"
cs_trial_next_lv"*
sc_trial_next_lv
result (Rresult"
cs_trial_score_rank"y
sc_trial_score_rank
result (Rresult$
rolerank (2.p_srankRrolerank$
ranklist (2.p_srankRranklist"
p_srank
rank (Rrank
roleid (Rroleid
rolename (	Rrolename
score (Rscore
topdun (Rtopdun"
cs_trial_hsr_info"Å
sc_trial_hsr_info
result (Rresult+

rewardlist (2.p_hsrewardR
rewardlist'
	rewardacc (2	.p_rewardR	rewardacc"8

p_hsreward
stage (Rstage
state (Rstate"B
sc_trial_hsr_update+

rewardlist (2.p_hsrewardR
rewardlist")
cs_trial_hsr_draw
stage (Rstage"w
sc_trial_hsr_draw
result (Rresult!
reward (2	.p_rewardRreward'
	rewardacc (2	.p_rewardR	rewardacc"8
p_relive
reliveid (Rreliveid
num (Rnum"
cs_trial_fj_leave"+
sc_trial_fj_leave
result (Rresult"<
p_tbox
boxid (Rboxid
	opentimes (R	opentimes"M
p_mon
type (Rtype
monpower (Rmonpower
monid (Rmonid"
cs_trial_tbox_fixreward"T
sc_trial_tbox_fixreward
result (Rresult!
reward (2	.p_rewardRreward")
sc_trial_curfew
result (Rresult"
cs_ftiger_info"à
sc_ftiger_info
	freetimes (R	freetimes
	jointimes (R	jointimes
paytimes (Rpaytimes
tiger (2.p_tigerRtiger"#
p_tiger
numbers (Rnumbers"
cs_ftiger_rank";
sc_ftiger_rank)
ranklist (2.p_tiger_rankRranklist"l
p_tiger_rank
rank (Rrank
name (	Rname
cardnum (Rcardnum
usetimes (Rusetimes"
cs_ftiger_play"H
sc_ftiger_play
result (Rresult
tiger (2.p_tigerRtiger"
cs_ftiger_refresh"K
sc_ftiger_refresh
result (Rresult
tiger (2.p_tigerRtiger"
cs_ftiger_draw"K
sc_ftiger_draw
result (Rresult!
reward (2	.p_rewardRreward"
cs_powerrank_open"Å
sc_powerrank_open

start_time (R	startTime
end_time (RendTime
priority (Rpriority
icon (	Ricon
title (	Rtitle
content (	Rcontent
is_open (RisOpen
	rewardger (R	rewardger
	max_power	 (RmaxPower"
cs_powerrank_list"‹
sc_powerrank_list
result (Rresult)
	rank_list (2.p_powerrankRrankList4
reward_list (2.p_powerrank_rewardR
rewardList5
	achv_list (2.p_powerrank_achv_rewardRachvList
my_rank (RmyRank"É
p_powerrank
rank (Rrank
power (Rpower
	role_name (	RroleName
level (Rlevel
role_id (RroleId"q
p_powerrank_reward

begin_rank (R	beginRank
end_rank (RendRank!
reward (2	.p_rewardRreward"R
p_powerrank_achv_reward
power (Rpower!
reward (2	.p_rewardRreward"å
p_top_ranker
roleid (Rroleid
icon (Ricon
rolename (	Rrolename

familyname (	R
familyname
viplv (Rviplv"/
cs_sysrank_fightpower
offset (Roffset"®
sc_sysrank_fightpower
result (Rresult"
rank (2.p_fight_powerRrank'
toprank (2.p_top_rankerRtoprank*
ranklist (2.p_fight_powerRranklist"Ö
p_fight_power
rank (Rrank
roleid (Rroleid
rolename (	Rrolename
rolelv (Rrolelv
power (Rpower",
cs_sysrank_advstar
offset (Roffset"ü
sc_sysrank_advstar
result (Rresult
rank (2.p_adv_starRrank'
toprank (2.p_top_rankerRtoprank'
ranklist (2.p_adv_starRranklist"Ü

p_adv_star
rank (Rrank
roleid (Rroleid
rolename (	Rrolename
power (Rpower
starnums (Rstarnums".
cs_sysrank_gerpokdex
offset (Roffset"•
sc_sysrank_gerpokdex
result (Rresult!
rank (2.p_ger_pokdexRrank'
toprank (2.p_top_rankerRtoprank)
ranklist (2.p_ger_pokdexRranklist"Ç
p_ger_pokdex
rank (Rrank
roleid (Rroleid
rolename (	Rrolename
fatk (Rfatk
gernum (Rgernum"+
cs_sysrank_topger
offset (Roffset"ú
sc_sysrank_topger
result (Rresult
rank (2
.p_top_gerRrank'
toprank (2.p_top_rankerRtoprank&
ranklist (2
.p_top_gerRranklist"ô
	p_top_ger
rank (Rrank
roleid (Rroleid
rolename (	Rrolename(
gericon (2.p_ger_summaryRgericon
gerpower (Rgerpower".
cs_sysrank_topfamily
offset (Roffset"•
sc_sysrank_topfamily
result (Rresult!
rank (2.p_top_familyRrank'
toprank (2.p_top_rankerRtoprank)
ranklist (2.p_top_familyRranklist"ú
p_top_family
rank (Rrank
familyid (Rfamilyid

familyname (	R
familyname
familylv (Rfamilylv 
familypower (Rfamilypower"7
cs_sysrank_family_summary
familyid (Rfamilyid"`
sc_sysrank_family_summary
result (Rresult+
summary (2.p_family_summaryRsummary"
cs_sign_info"Ã
sc_sign_info
month (Rmonth
can_sign (RcanSign(
month_sign_times (RmonthSignTimes.

rewardlist (2.p_sign_rewardR
rewardlist1

add_reward (2.p_sign_add_rewardR	addReward"V
p_sign_reward"
multiNeedVip (RmultiNeedVip!
reward (2	.p_rewardRreward"s
p_sign_add_reward
	signtimes (R	signtimes

need_times (R	needTimes!
reward (2	.p_rewardRreward"
cs_sign_draw"I
sc_sign_draw
result (Rresult!
reward (2	.p_rewardRreward"
cs_sign_draw_add"á
sc_sign_draw_add
result (Rresult!
reward (2	.p_rewardRreward8
new_add_reward (2.p_sign_add_rewardRnewAddReward"
cs_hotmsg_list"6
sc_hotmsg_list$
msg_list (2	.p_hotmsgRmsgList".
p_hotmsg
id (Rid
icon (	Ricon"
cs_renvelope_info"á
sc_renvelope_info
result (Rresult
robtimes (Rrobtimes(
envelope (2.p_renvelopeRenvelope
isrob (Risrob"q
p_renvelope 
renvelopeid (Rrenvelopeid$
renvelopecase (Rrenvelopecase
rentimes (Rrentimes"2
cs_renvelope_rob

envelopeid (R
envelopeid"M
sc_renvelope_rob
result (Rresult!
reward (2	.p_rewardRreward"*
sc_renvelope_xhd
ctimes (Rctimes"
cs_renvelope_xhd"
cs_friend_info"ò
sc_friend_info.
friend_list (2.p_friend_frdR
friendList*
send_energy_times (RsendEnergyTimes*
draw_energy_times (RdrawEnergyTimes"A
cs_friend_search
tar_name (	RtarName
type (Rtype"K
sc_friend_search7
stranger_list (2.p_friend_strangerRstrangerList"-
cs_friend_send_apply
tar_id (RtarId".
sc_friend_send_apply
result (Rresult"I
cs_friend_handle_apply
msg_uid (RmsgUid
option (Roption"0
sc_friend_handle_apply
result (Rresult")
cs_friend_delete
tar_id (RtarId"*
sc_friend_delete
result (Rresult"9
sc_friend_msg(
msg_list (2.p_friend_msgRmsgList"*
cs_friend_msg
read_uid (RreadUid"E
cs_friend_send_msg
tar_id (RtarId
content (	Rcontent",
sc_friend_send_msg
result (Rresult".
cs_friend_send_energy
tar_id (RtarId"/
sc_friend_send_energy
result (Rresult"0
cs_friend_draw_energy
msg_uid (RmsgUid"/
sc_friend_draw_energy
result (Rresult")
'cs_friend_draw_energy_and_return_onekey"c
'sc_friend_draw_energy_and_return_onekey
result (Rresult 
msg_uid_list (R
msgUidList"-
cs_friend_challenge
roleid (Rroleid"-
sc_friend_challenge
result (Rresult">
cs_friend_send_energy_onekey
tar_id_list (R	tarIdList"?
sc_friend_send_energy_onekey
succid_list (R
succidList"\
p_friend_frd+
	base_info (2.p_role_publicRbaseInfo
send_energy (R
sendEnergy"V
p_friend_stranger+
	base_info (2.p_role_publicRbaseInfo
state (Rstate"Ì
p_friend_msg
type (Rtype
uid (Ruid
time (Rtime
src_id (RsrcId
src_name (	RsrcName
content (	Rcontent
icon (Ricon
desc (	Rdesc/
role_public	 (2.p_role_publicR
rolePublic"@
sc_friend_add_notify(
add_list (2.p_friend_frdRaddList"1
sc_friend_del_notify
del_list (RdelList"V
sc_friend_state_trans_notify
roleid (Rroleid

lastlogout (R
lastlogout""
cs_boss_info
open (Ropen"¶
sc_boss_info
state (Rstate
cd_time (RcdTime$
	boss_info (2.p_bossRbossInfo$
role_draw_inds (RroleDrawInds(
family_draw_inds (RfamilyDrawInds

begin_time (R	beginTime
end_time (RendTime
	b_vip_sel (RbVipSel
	open_time	 (RopenTime"S
p_boss
base (2.p_gerRbase
hp (Rhp

boss_index (R	bossIndex"
cs_boss_quit"&
sc_boss_quit
result (Rresult"H
cs_boss_draw
	draw_type (RdrawType
	draw_inds (RdrawInds"É
sc_boss_draw
result (Rresult
	draw_type (RdrawType
	draw_inds (RdrawInds!
reward (2	.p_rewardRreward"
cs_boss_fight"ÿ
sc_boss_fight
result (Rresult2
fight_struct (2.p_fight_structRfightStruct
harm (Rharm
cd_time (RcdTime
per_harm (RperHarm3
one_fight_reward (2	.p_rewardRoneFightReward"+
cs_boss_tops
	tops_type (RtopsType"d
sc_boss_tops
result (Rresult
	tops_type (RtopsType
tops (2.p_boss_topRtops"ê

p_boss_top
roleid (Rroleid
rolename (	Rrolename
familyid (Rfamilyid

familyname (	R
familyname
harm (Rharm"t
sc_player_harm
name (	Rname
roleid (Rroleid
harm (Rharm
icon (Ricon
hp (Rhp"*
cs_boss_selvip
bselect (Rbselect"(
sc_boss_selvip
result (Rresult"
cs_boss_harm"L
sc_boss_harm
	role_harm (RroleHarm
family_harm (R
familyHarm",
sc_boss_state_update
state (Rstate"
cs_digivice_info"t
sc_digivice_info
result (Rresult%
diglist (2.p_digiviceRdiglist!
sumattr (2.p_attrRsumattr"”

p_digivice
digid (Rdigid
level (Rlevel
exp (Rexp#
reflist (2	.p_refineRreflist
isopen (Risopen'
condlist (2.p_dig_condRcondlist!
digattr (2.p_attrRdigattr"å
p_refine
refid (Rrefid
state (Rstate*
attrlist (2.p_refine_attrRattrlist(
tmplist (2.p_refine_attrRtmplist"=
p_refine_attr
attrid (Rattrid
value (Rvalue"A
cs_digivice_reinforce
digid (Rdigid
type (Rtype"/
sc_digivice_reinforce
result (Rresult"∏
sc_digivice_notify%
newlist (2.p_digiviceRnewlist+

updatelist (2.p_digiviceR
updatelist+

deletelist (2.p_digiviceR
deletelist!
sumattr (2.p_attrRsumattr"p
cs_digivice_refine
digid (Rdigid
refid (Rrefid
type (Rtype
locklist (Rlocklist",
sc_digivice_refine
result (Rresult"
cs_digivice_replace
digid (Rdigid
refid (Rrefid
type (Rtype(
replist (2.p_refine_attrRreplist"-
sc_digivice_replace
result (Rresult">

p_dig_cond
ismeet (Rismeet
digcond (	Rdigcond"H
cs_digivice_replace_giveup
digid (Rdigid
refid (Rrefid"4
sc_digivice_replace_giveup
result (Rresult"
cs_rmbgift_info"ö
sc_rmbgift_info'
	gift_list (2
.p_rmbgiftRgiftList.
vip_gift_list (2
.p_rmbgiftRvipGiftList.
all_gift_list (2
.p_rmbgiftRallGiftList"“
	p_rmbgift
typeid (Rtypeid
sellID (RsellID
	start_sec (RstartSec
end_sec (RendSec
	now_price (RnowPrice
	old_price (RoldPrice
need_vip_lv (R	needVipLv!
reward (2	.p_rewardRreward
name	 (	Rname
icon
 (	Ricon

draw_times (R	drawTimes$
can_draw_times (RcanDrawTimes!
refresh_type (RrefreshType
refresh_day (R
refreshDay
desc (	Rdesc

show_state (R	showState"
cs_mine_info"≤
sc_mine_info
result (Rresult*
cur_buy_cost (2.p_moneyR
curBuyCost0
cur_search_cost (2.p_moneyRcurSearchCost&
car_list (2.p_mine_carRcarList2
cur_atk_info (2.p_mine_atk_infoR
curAtkInfo%
used_geridList (RusedGeridList)
tar_mine (2.p_mine_detailRtarMine"á
p_mine_atk_info$
cur_atk_roleid (RcurAtkRoleid&
dead_gerid_list (RdeadGeridList&
cur_atk_release (RcurAtkRelease"ë

p_mine_car
pos (Rpos
cur_type (RcurType
is_mine (RisMine$
dig_start_time (RdigStartTime
reward_time (R
rewardTime*
base_reward (2	.p_rewardR
baseReward
reward_rate (R
rewardRate)
	role_list (2.p_mine_seatRroleList"#
cs_mine_refresh
pos (Rpos"è
sc_mine_refresh
result (Rresult
pos (Rpos&
mineTypeIDList (RmineTypeIDList*
cur_buy_cost (2.p_moneyR
curBuyCost"?
cs_mine_buy
pos (Rpos

mineTypeID (R
mineTypeID"K
sc_mine_buy
result (Rresult$
new_car (2.p_mine_carRnewCar"F
cs_mine_dig
pos (Rpos%
linelist (2	.p_lineupRlinelist"s
sc_mine_dig
result (Rresult$
new_car (2.p_mine_carRnewCar&
used_gerid_list (RusedGeridList"Z
cs_mine_view
roleid (Rroleid
car_pos (RcarPos
seat_pos (RseatPos"j
sc_mine_view/
role_public (2.p_role_publicR
rolePublic)
ger_line (2.p_ger_summaryRgerLine"
cs_mine_explore"≥
sc_mine_explore
result (Rresult)
tar_mine (2.p_mine_detailRtarMine+
atk_info (2.p_mine_atk_infoRatkInfo0
cur_search_cost (2.p_moneyRcurSearchCost"Ê
p_mine_detail
ownerID (RownerID
	ownerName (	R	ownerName

mineTypeID (R
mineTypeID 
releaseTime (RreleaseTime

rewardTime (R
rewardTime)
	seat_list (2.p_mine_seatRseatList
pos (Rpos"É
p_mine_seat
pos (Rpos
roleid (Rroleid/
role_public (2.p_role_publicR
rolePublic
is_alive (RisAlive"[
cs_mine_attack_request
seat_pos (RseatPos&
	line_list (2	.p_lineupRlineList"d
sc_mine_attack_request
result (Rresult2
fight_struct (2.p_fight_structRfightStruct"f
cs_mine_attack_report
seat_pos (RseatPos2
fight_struct (2.p_fight_structRfightStruct"»
sc_mine_attack_report
result (Rresult!
attacker_win (RattackerWin)
	seat_list (2.p_mine_seatRseatList!
reward (2	.p_rewardRreward&
dead_gerid_list (RdeadGeridList""
cs_mine_hist
type (Rtype"M
sc_mine_hist
type (Rtype)
	hist_list (2.p_mine_histRhistList"Í
p_mine_hist
histType (RhistType"
attackerName (	RattackerName
	ownerName (	R	ownerName

mineTypeID (R
mineTypeID
	fightTime (R	fightTime
icon (Ricon
viplv (Rviplv
is_win (RisWin"+
cs_mine_invite
mine_pos (RminePos"(
sc_mine_invite
result (Rresult"*
cs_mine_join_view
msg_id (RmsgId"O
sc_mine_join_view
result (Rresult"
mine (2.p_mine_detailRmine"Å
cs_mine_guard

tar_roleid (R	tarRoleid
tar_pos (RtarPos
seat_pos (RseatPos
line (2	.p_lineupRline"t
sc_mine_guard
result (Rresult$
new_car (2.p_mine_carRnewCar%
used_geridList (RusedGeridList"'
cs_mine_open
car_pos (RcarPos"L
sc_mine_open
result (Rresult$
new_car (2.p_mine_carRnewCar"'
cs_mine_draw
car_pos (RcarPos"ó
sc_mine_draw
result (Rresult!
reward (2	.p_rewardRreward$
new_car (2.p_mine_carRnewCar&
used_gerid_list (RusedGeridList"6
sc_mine_notify$
new_car (2.p_mine_carRnewCar"=
cs_mine_view_reward&
	line_list (2	.p_lineupRlineList"0
sc_mine_view_reward
add_rate (RaddRate"Y
cs_hist_share
type (Rtype
histid (Rhistid
	tarroleid (R	tarroleid"'
sc_hist_share
result (Rresult"'
cs_hist_watch
histid (Rhistid"ß
sc_hist_watch
result (Rresult2
fight_struct (2.p_fight_structRfightStruct$
atkpvp (2.p_role_histRatkpvp$
defpvp (2.p_role_histRdefpvp"
p_role_hist
roleid (Rroleid
icon (Ricon
rolename (	Rrolename
rank (Rrank
viplv (Rviplv"
cs_pray_info"Ó
sc_pray_info
result (Rresult
endtime (Rendtime
typeid (Rtypeid

self_score (R	selfScore
draw_indexs (R
drawIndexs$
one_cost (2	.p_rewardRoneCost$
ten_cost (2	.p_rewardRtenCost
count (Rcount

pray_state	 (R	prayState
bfree
 (Rbfree=
client_show_info (2.p_client_show_infoRclientShowInfo"H
cs_pray_rank

rank_start (R	rankStart
rank_end (RrankEnd"Ñ
sc_pray_rank
result (Rresult)
	rank_list (2.p_pray_rankRrankList
	self_rank (RselfRank
score (Rscore"6

cs_pray_do
bten (Rbten
count (Rcount"ê

sc_pray_do
result (Rresult!
reward (2	.p_rewardRreward
	new_score (RnewScore
count (Rcount
bfree (Rbfree"$
cs_pray_draw
score (Rscore"j
sc_pray_draw
result (Rresult!
reward (2	.p_rewardRreward
draw_indexs (R
drawIndexs".
sc_pray_state

pray_state (R	prayState"X
p_pray_rank
roleid (Rroleid
	role_name (	RroleName
score (Rscore"õ
p_client_show_info@
show_rank_info_list (2.p_show_rank_infoRshowRankInfoListC
show_score_info_list (2.p_show_score_infoRshowScoreInfoList"Å
p_show_rank_info
score (Rscore
beg_rank (RbegRank
end_rank (RendRank!
reward (2	.p_rewardRreward"\
p_show_score_info
id (Rid
score (Rscore!
reward (2	.p_rewardRreward"
cs_field_info"7
sc_field_info&
stones (2.p_field_stoneRstones"ó
p_field_stone
stone_id (RstoneId
initid (Rinitid
ger_id (RgerId
stage (Rstage
level (Rlevel
pos (Rpos"R
cs_field_uplv
b_mutil (RbMutil
initids (Rinitids
lv (Rlv"O
sc_field_uplv
result (Rresult&
stones (2.p_field_stoneRstones".
cs_field_decompose
initids (Rinitids"w
sc_field_decompose
result (Rresult!
reward (2	.p_rewardRreward&
stones (2.p_field_stoneRstones"ê
cs_field_change!
equip_initid (RequipInitid
	un_initid (RunInitid
ger_id (RgerId
stage (Rstage
pos (Rpos"Ñ
sc_field_change
result (Rresult/
euqip_stone (2.p_field_stoneR
euqipStone(
unstone (2.p_field_stoneRunstone"n
cs_field_set
suit_id (RsuitId
initids (Rinitids
ger_id (RgerId
stage (Rstage"z
sc_field_set
result (Rresult&
stones (2.p_field_stoneRstones*
unstones (2.p_field_stoneRunstones"*
cs_field_allun
initids (Rinitids"T
sc_field_allun
result (Rresult*
unstones (2.p_field_stoneRunstones"¬
cs_field_equip_change#
equip_initid1 (RequipInitid1#
equip_initid2 (RequipInitid2
ger_id (RgerId
stage (Rstage
postar1 (Rpostar1
postar2 (Rpostar2"
sc_field_equip_change
result (Rresult&
stone1 (2.p_field_stoneRstone1&
stone2 (2.p_field_stoneRstone2"
cs_chaser_enter"•
sc_chaser_enter
result (Rresult
is_open (RisOpen
	is_teamup (RisTeamup!
chaser_times (RchaserTimes)
mon_list (2.p_ger_summaryRmonList*
chaser_list (2	.p_chaserR
chaserList
teamid (Rteamid
startsec (Rstartsec
endsec	 (Rendsec"°
p_chaser/
role_public (2.p_role_publicR
rolePublic)
ger_list (2.p_ger_summaryRgerList
serverid (Rserverid

team_speed (R	teamSpeed"
cs_chaser_new_teamup"r
sc_chaser_new_teamup
result (Rresult*
chaser_list (2	.p_chaserR
chaserList
teamid (Rteamid"
cs_chaser_quick_join"r
sc_chaser_quick_join
result (Rresult*
chaser_list (2	.p_chaserR
chaserList
teamid (Rteamid"
cs_chaser_leave")
sc_chaser_leave
result (Rresult"
cs_chaser_invite"*
sc_chaser_invite
result (Rresult"(
cs_chaser_join
teamid (Rteamid"l
sc_chaser_join
result (Rresult*
chaser_list (2	.p_chaserR
chaserList
teamid (Rteamid"F
cs_chaser_ger_exchange
gerid (Rgerid
tarpos (Rtarpos"\
sc_chaser_ger_exchange
result (Rresult*
chaser_list (2	.p_chaserR
chaserList"
cs_chaser_embattle"X
sc_chaser_embattle
result (Rresult*
chaser_list (2	.p_chaserR
chaserList"D
cs_chaser_ger_movpos
gerid (Rgerid
tarpos (Rtarpos"Z
sc_chaser_ger_movpos
result (Rresult*
chaser_list (2	.p_chaserR
chaserList"
cs_chaser_fight"]
sc_chaser_fight
result (Rresult2
fight_struct (2.p_fight_structRfightStruct"J
cs_chaser_fight_back2
fight_struct (2.p_fight_structRfightStruct"å
sc_chaser_fight_back
result (Rresult
iswin (Riswin!
chaser_times (RchaserTimes#
blood_percent (RbloodPercent">
sc_chaser_notify*
chaser_list (2	.p_chaserR
chaserList"#
cs_sgame_info
type (Rtype"Ø
sc_sgame_info
result (Rresult/

sgame_base (2.sgame_base_infoR	sgameBase
	canusenum (R	canusenum
totalnum (Rtotalnum
	buy_times (RbuyTimes"%
cs_sgame_reward
type (Rtype"P
sc_sgame_reward
result (Rresult%
lists (2.p_sgame_rewardRlists"q
p_sgame_reward
id (Rid
state (Rstate
points (Rpoints!
reward (2	.p_rewardRreward"=
cs_sgame_buytimes
type (Rtype
times (Rtimes"A
sc_sgame_buytimes
result (Rresult
times (Rtimes"$
cs_sgame_enter
type (Rtype"(
sc_sgame_enter
result (Rresult"3
cs_sgame_draw
type (Rtype
id (Rid"J
sc_sgame_draw
result (Rresult!
reward (2	.p_rewardRreward"%
cs_sgame_onekey
type (Rtype"L
sc_sgame_onekey
result (Rresult!
reward (2	.p_rewardRreward"B
sc_sgame_notify/

sgame_base (2.sgame_base_infoR	sgameBase"
cs_sgame_over
type (Rtype
points (Rpoints
numbers (Rnumbers(
lists (2.rwd_id_and_numberRlists"b
sc_sgame_over
result (Rresult
points (Rpoints!
reward (2	.p_rewardRreward"»
sgame_base_info
type (Rtype

used_times (R	usedTimes

cur_points (R	curPoints
total_times (R
totalTimes%
lists (2.p_sgame_rewardRlists
	buy_times (RbuyTimes";
rwd_id_and_number
id (Rid
number (Rnumber"l
sc_sgame_num_notify
	canusenum (R	canusenum
totalnum (Rtotalnum
	buy_times (RbuyTimes"
cs_perterr_tupo"i
sc_perterr_tupo
result (Rresult>
production_skill (2.p_production_skillRproductionSkill"2
cs_perterr_switch_title
prod_id (RprodId"q
sc_perterr_switch_title
result (Rresult>
production_skill (2.p_production_skillRproductionSkill"6
cs_perterr_recycle
id (Rid
num (Rnum"}
sc_perterr_recycle
result (Rresult!
reward (2	.p_rewardRreward,
	rcle_shop (2.p_recycle_shopRrcleShop"1
cs_perterr_announce
announce (	Rannounce"-
sc_perterr_announce
result (Rresult")
cs_perterr_info
roleid (Rroleid"é
sc_perterr_info
result (Rresult2
perterr_info (2.p_perterr_infoRperterrInfo/
role_public (2.p_role_publicR
rolePublic"≤
p_perterr_info
roleid (Rroleid!
foster (2	.p_fosterRfoster=
production_shops (2.p_production_shopRproductionShops2
recycle_shop (2.p_recycle_shopRrecycleShop>
production_skill (2.p_production_skillRproductionSkill
announce (	Rannounce
bfdraw (Rbfdraw"¥
p_foster
roleid (Rroleid
type_id (RtypeId!
surplus_time (RsurplusTime 
ger (2.p_ger_summaryRger
	frolename (	R	frolename
stage (Rstage"Ä
p_production_shop
prod_id (RprodId
is_open (RisOpen
level (Rlevel
exp (Rexp#
stor_material (RstorMaterial
stor_exp (RstorExp
	stor_gold (RstorGold
col_num (RcolNum
	prod_time	 (RprodTime"X
p_recycle_shop
level (Rlevel
is_open (RisOpen
acc_num (RaccNum"â
p_production_skill
level (Rlevel
	exp_times (RexpTimes
tupo_lv (RtupoLv
prod_id (RprodId
cd (Rcd".
cs_perterr_openshop
prod_id (RprodId"-
sc_perterr_openshop
result (Rresult"-
cs_perterr_collect
prod_id (RprodId"Ò
sc_perterr_collect
result (Rresult
bcrit (Rbcrit-
normalreward (2	.p_rewardRnormalreward
roleexp (Rroleexp'
	colreward (2	.p_rewardR	colreward;
production_shop (2.p_production_shopRproductionShop"\
cs_perterr_foster
type_id (RtypeId
froleid (Rfroleid
stage (Rstage"N
sc_perterr_foster
result (Rresult!
foster (2	.p_fosterRfoster"/
cs_perterr_prod_uplv
prod_id (RprodId"_
sc_perterr_prod_uplv
result (Rresult/
	prod_shop (2.p_production_shopRprodShop"
cs_perterr_friend"¢
sc_perterr_friend
result (Rresult+
finfo (2.p_perterr_friendinfoRfinfo
bdraw (Rbdraw
surtime (Rsurtime
froleid (Rfroleid"u
p_perterr_friendinfo/
role_public (2.p_role_publicR
rolePublic
flag (Rflag
bfriend (Rbfriend"
cs_perterr_fosterdraw"R
sc_perterr_fosterdraw
result (Rresult!
reward (2	.p_rewardRreward"
cs_perterr_rcle_uplv"\
sc_perterr_rcle_uplv
result (Rresult,
	rcle_shop (2.p_recycle_shopRrcleShop"G
cs_perterr_getprod
froleid (Rfroleid
prod_id (RprodId"Å
sc_perterr_getprod
result (Rresult;
production_shop (2.p_production_shopRproductionShop
roleid (Rroleid"
cs_perterr_skilluplv"n
sc_perterr_skilluplv
result (Rresult>
production_skill (2.p_production_skillRproductionSkill"-
cs_perterr_getskill
roleid (Rroleid"m
sc_perterr_getskill
result (Rresult>
production_skill (2.p_production_skillRproductionSkill"K
cs_perterr_invite_foster
tar_id (RtarId
content (	Rcontent"2
sc_perterr_invite_foster
result (Rresult"
cs_fterritory_info"ÿ
sc_fterritory_info
result (Rresult
lv (Rlv#
tasklist (2.p_taskRtasklist
shop (2.p_shopRshop'
pmansion (2.p_pmansionRpmansion)

switchlist (2	.p_switchR
switchlist#
ftmoney (2	.p_rewardRftmoney(
bufflist (2.p_fter_buffRbufflist5
hanguptasklist	 (2.p_hanguptaskRhanguptasklist"Ü

p_pmansion
manid (Rmanid
roleid (Rroleid
rolename (	Rrolename
title (Rtitle
coolsec (Rcoolsec"0
cs_fterritory_taskdraw
taskid (Rtaskid"S
sc_fterritory_taskdraw
result (Rresult!
reward (2	.p_rewardRreward"a
cs_fterritory_shopbuy
sellid (Rsellid
buynum (Rbuynum
sellpos (Rsellpos"/
sc_fterritory_shopbuy
result (Rresult"
cs_fterritory_uplevel"?
sc_fterritory_uplevel
result (Rresult
lv (Rlv"2
cs_fterritory_switch
tarmanid (Rtarmanid".
sc_fterritory_switch
result (Rresult"B
sc_fter_pmansion_notify'
pmansion (2.p_pmansionRpmansion"ä
sc_fter_task_notify!
newlist (2.p_taskRnewlist'

updatelist (2.p_taskR
updatelist'

deletelist (2.p_taskR
deletelist"7
sc_ftshop_notify#
ftmoney (2	.p_rewardRftmoney"L
cs_fterritory_switchback
respond (Rrespond
roleid (Rroleid"2
sc_fterritory_switchback
result (Rresult"v
p_switch
roleid (Rroleid
rolename (	Rrolename
	mansionid (R	mansionid
coolsec (Rcoolsec"í
sc_fter_switch_notify#
newlist (2	.p_switchRnewlist)

updatelist (2	.p_switchR
updatelist)

deletelist (2	.p_switchR
deletelist"ô
sc_fter_buff_notify&
newlist (2.p_fter_buffRnewlist,

updatelist (2.p_fter_buffR
updatelist,

deletelist (2.p_fter_buffR
deletelist"=
p_fter_buff
buffid (Rbuffid
endsec (Rendsec"
cs_fterritory_htask"U
sc_fterritory_htask
result (Rresult&
	htasklist (2.p_htaskR	htasklist"°
p_htask
roleid (Rroleid
rolename (	Rrolename
ttask (Rttask
htask (Rhtask
tftmoney (Rtftmoney
hftmoney (Rhftmoney"™
!sc_fterritory_fhangup_task_notify'
newlist (2.p_hanguptaskRnewlist-

updatelist (2.p_hanguptaskR
updatelist-

deletelist (2.p_hanguptaskR
deletelist"b
cs_fterritory_fhangup_active
taskid (Rtaskid*
	standlist (2.p_ger_standR	standlist"6
sc_fterritory_fhangup_active
result (Rresult"8
cs_fterritory_fhangup_taskdraw
taskid (Rtaskid"[
sc_fterritory_fhangup_taskdraw
result (Rresult!
reward (2	.p_rewardRreward"\
p_hanguptask/
	standlist (2.p_ger_stand_infoR	standlist
task (2.p_taskRtask"R
p_ger_stand_info
gerid (Rgerid
evolve (Revolve
pos (Rpos"
cs_fcross_enrol")
sc_fcross_enrol
result (Rresult"6
cs_fcross_inspire!
inspire_type (RinspireType"_
sc_fcross_inspire
result (Rresult2
inspire_info (2.p_inspire_infoRinspireInfo"a
cs_fcross_disposal
battack (Rbattack1
warger_lists (2.p_warger_infoRwargerLists"y
sc_fcross_disposal
result (Rresult1
warger_lists (2.p_warger_infoRwargerLists
battack (Rbattack"/
cs_fcross_battlefield
benemy (Rbenemy"æ
sc_fcross_battlefield
result (Rresult*
selfleftatttimes (Rselfleftatttimes
	selfstars (R	selfstars
fstars (Rfstars!
enemy_fstars (RenemyFstars2
warrior_list (2.p_warrior_infoRwarriorList
benemy (Rbenemy 
allatttimes (Rallatttimes
fullsets	 (Rfullsets"£
p_warrior_info

lost_stars (R	lostStars
roleid (Rroleid
mark_roleid (R
markRoleid

power_rank (R	powerRank
rolename (	Rrolename"`
cs_fcross_team
battack (Rbattack
benemy (Rbenemy
	selroleid (R	selroleid"»
sc_fcross_team
result (Rresult
battack (Rbattack/
warger_list (2.p_warger_infoR
wargerList
benemy (Rbenemy
	selroleid (R	selroleid

team_speed (R	teamSpeed"
cs_fcross_inspireinfo"c
sc_fcross_inspireinfo
result (Rresult2
inspire_list (2.p_role_inspireRinspireList"W
p_role_inspire
times (Rtimes/
role_public (2.p_role_publicR
rolePublic"
cs_fcross_getstars"X
sc_fcross_getstars
result (Rresult*

stars_list (2.stars_infoR	starsList"i

stars_info
stars (Rstars/
role_public (2.p_role_publicR
rolePublic
power (Rpower"
cs_fcross_challtimes"i
sc_fcross_challtimes
result (Rresult9
challtimes_list (2.challtimes_infoRchalltimesList"X
challtimes_info
times (Rtimes/
role_public (2.p_role_publicR
rolePublic"I
cs_fcross_scorerank
rankbeg (Rrankbeg
rankend (Rrankend"ü
sc_fcross_scorerank
result (Rresult8
scorerank_list (2.p_scorerank_infoRscorerankList6
self_rankinfo (2.p_scorerank_infoRselfRankinfo"Ê
p_scorerank_info
score (Rscore
familyid (Rfamilyid

familyname (	R
familyname
svrid (Rsvrid
	chairname (	R	chairname
rank (Rrank
allstars (Rallstars
	chairicon (R	chairicon"
cs_fcross_familyreplay"r
sc_fcross_familyreplay
result (Rresult@
fight_replay_list (2.p_fight_replay_infoRfightReplayList"*
cs_fcross_replay
histid (Rhistid"∞
sc_fcross_replay
result (RresultK
fight_struct_info_lists (2.p_fight_struct_infoRfightStructInfoLists7
fight_replay (2.p_fight_replay_infoRfightReplay"5
cs_fcross_markenemy

markroleid (R
markroleid"e
sc_fcross_markenemy
result (Rresult
roleid (Rroleid

markroleid (R
markroleid"≤
p_warger_info
gerid (Rgerid
sets (Rsets
pos (Rpos/
summary_ger (2.p_ger_summaryR
summaryGer
speed (Rspeed

fightpower (R
fightpower"
cs_fcross_fightreplay"q
sc_fcross_fightreplay
result (Rresult@
fight_replay_list (2.p_fight_replay_infoRfightReplayList"4
cs_fcross_fight!
enemy_roleid (RenemyRoleid"Ø
sc_fcross_fight
result (RresultK
fight_struct_info_lists (2.p_fight_struct_infoRfightStructInfoLists7
fight_replay (2.p_fight_replay_infoRfightReplay"ì
p_fight_replay_info
histid (Rhistid
	atkroleid (R	atkroleid 
atkfamilyid (Ratkfamilyid
	defroleid (R	defroleid 
deffamilyid (Rdeffamilyid 
atkrolename (	Ratkrolename 
defrolename (	Rdefrolename$
atkfamilyname (	Ratkfamilyname$
deffamilyname	 (	Rdeffamilyname
allstars
 (Rallstars
serverid (Rserverid
	eserverid (R	eserverid"
cs_fcross_info"‘
sc_fcross_info
result (Rresult
stage (Rstage$
family (2.family_infoRfamily&
efamily (2.family_infoRefamily
inspire (Rinspire

allinspire (R
allinspire
goldadd (Rgoldadd
diaadd (Rdiaadd
benrol	 (Rbenrol!
total_addbuf
 (RtotalAddbuf
	countdown (R	countdownA
season_settlement (2.p_season_settlementRseasonSettlement
last_benrol (R
lastBenrol

begin_time (R	beginTime"∏
family_info

familyname (	R
familyname
serverid (Rserverid
score (Rscore!
score_change (RscoreChange
stars (Rstars

fightpower (R
fightpower"m
p_inspire_info
inspire (Rinspire

allinspire (R
allinspire!
total_addbuf (RtotalAddbuf"
cs_fcross_definfo"\
sc_fcross_definfo
result (Rresult/
definfo_lists (2
.p_definfoRdefinfoLists"d
	p_definfo
num (Rnum
power (Rpower/
role_public (2.p_role_publicR
rolePublic"u
p_fight_struct_info
place (Rplace
iswin (Riswin2
fight_struct (2.p_fight_structRfightStruct"n
p_season_settlement

begin_time (R	beginTime8
scorerank_info (2.p_scorerank_infoRscorerankInfo"ﬁ
sc_fcross_bcfight
roleid (Rroleid
stars (Rstars

challtimes (R
challtimes
benemy (Rbenemy
allstars (Rallstars%
self_challtime (RselfChalltime 
enemyroleid (Renemyroleid"C
cs_fcross_open_bfield
benemy (Rbenemy
open (Ropen"[
sc_fcross_open_bfield
result (Rresult
open (Ropen
benemy (Rbenemy"0
sc_fcross_notify_enrol
result (Rresult".
sc_fcross_notify_stage
stage (Rstage"
cs_extreme_info"å
sc_extreme_info
result (Rresult
curscore (Rcurscore
division (Rdivision 
seasonbegin (Rseasonbegin2
	boxbattle (2.p_extreme_boxbattleR	boxbattle,
boxfree (2.p_extreme_boxfreeRboxfree)
boxwin (2.p_extreme_boxwinRboxwin4
standuplist	 (2.p_extreme_standupRstanduplist"
quickopennum
 (Rquickopennum 
challengetm (	Rchallengetm"ì
p_extreme_boxbattle
boxid (Rboxid
boxtype (Rboxtype
boxpos (Rboxpos
boxtime (Rboxtime
quicknum (Rquicknum"C
p_extreme_boxfree
boxid (Rboxid
boxtime (Rboxtime"í
p_extreme_boxwin
boxid (Rboxid
isdraw (Risdraw
wincount (Rwincount
boxtime (Rboxtime
openneed (Ropenneed"
cs_extreme_match"î
sc_extreme_match
result (Rresult2
fight_structs (2.p_fight_listRfightStructs4
fight_result (2.p_extreme_recordRfightResult"t
p_extreme_record
replayid (Rreplayid
fightsec (Rfightsec(
players (2.p_result_listRplayers"¥
p_result_list
roleid (Rroleid
rolename (	Rrolename

familyname (	R
familyname
serverid (Rserverid
curscore (Rcurscore
getscore (Rgetscore
winnum (Rwinnum%
gerlist (2.p_ger_listRgerlist
rank	 (Rrank
icon
 (Ricon
viplv (Rviplv"8

p_ger_list
place (Rplace
iswin (Riswin"
cs_extreme_matchcancel"0
sc_extreme_matchcancel
result (Rresult"
cs_extreme_rank"Å
sc_extreme_rank
result (Rresult+
rankinfo (2.p_extreme_rankRrankinfo)
ownrank (2.p_extreme_rankRownrank"Ã
p_extreme_rank
rank (Rrank
roleid (Rroleid
serverid (Rserverid
rolename (	Rrolename

familyname (	R
familyname
curscore (Rcurscore
division (Rdivision"
cs_extreme_total_record"^
sc_extreme_total_record
result (Rresult+
records (2.p_extreme_recordRrecords"
cs_extreme_my_record"[
sc_extreme_my_record
result (Rresult+
records (2.p_extreme_recordRrecords"M
cs_extreme_replayview
isowner (Risowner
replayid (Rreplayid"ô
sc_extreme_replayview
result (Rresult2
fight_structs (2.p_fight_listRfightStructs4
fight_result (2.p_extreme_recordRfightResult"M
p_fight_list
place (Rplace'
struct (2.p_fight_structRstruct"J
cs_extreme_standup4
standuplist (2.p_extreme_standupRstanduplist"b
sc_extreme_standup
result (Rresult4
standuplist (2.p_extreme_standupRstanduplist"T
p_extreme_standup
place (Rplace)
	ger_stand (2.p_ger_standRgerStand"F
cs_extreme_boxopen
boxtype (Rboxtype
boxpos (Rboxpos"O
sc_extreme_boxopen
result (Rresult!
reward (2	.p_rewardRreward"H
cs_extreme_quickopen
boxtype (Rboxtype
boxpos (Rboxpos"Q
sc_extreme_quickopen
result (Rresult!
reward (2	.p_rewardRreward"I
sc_extreme_notify_freebox,
boxfree (2.p_extreme_boxfreeRboxfree"E
sc_extreme_notify_boxwin)
boxwin (2.p_extreme_boxwinRboxwin"
sc_extreme_notify_boxbattle
boxid (Rboxid
boxtype (Rboxtype
boxpos (Rboxpos
boxtime (Rboxtime"5
p_ger_stand
gerid (Rgerid
pos (Rpos"“
sc_extreme_notify_info"
quickopennum (Rquickopennum
curscore (Rcurscore
division (Rdivision 
seasonbegin (Rseasonbegin
result (Rresult"
cleanstandup (Rcleanstandup"5
cs_extreme_battlebox_unlock
boxpos (Rboxpos"É
sc_extreme_battlebox_unlock
result (Rresult
boxpos (Rboxpos
boxtime (Rboxtime
quicknum (Rquicknum"ô
sc_hist_watch_extreme
result (Rresult2
fight_structs (2.p_fight_listRfightStructs4
fight_result (2.p_extreme_recordRfightResult"
cs_statue_info"S
sc_statue_info
result (Rresult)

unlocklist (2	.p_statueR
unlocklist"5
cs_statue_active!
statue (2	.p_statueRstatue"©
sc_statue_active
result (Rresult!
active (2	.p_statueRactive/
maxstatuelist (2	.p_statueRmaxstatuelist)
rateinfo (2.p_activerateRrateinfo"\
p_statue
area (Rarea
pos (Rpos
stage (Rstage
level (Rlevel"O
p_activerate!
statue (2	.p_statueRstatue
	luckpoint (R	luckpoint"5
cs_statue_unlock!
statue (2	.p_statueRstatue"M
sc_statue_unlock
result (Rresult!
unlock (2	.p_statueRunlock"7
cs_statue_rateinfo!
statue (2	.p_statueRstatue"W
sc_statue_rateinfo
result (Rresult)
rateinfo (2.p_activerateRrateinfo"(
cs_statue_areainfo
area (Rarea"à
sc_statue_areainfo
result (Rresult)

activelist (2	.p_statueR
activelist/
maxstatuelist (2	.p_statueRmaxstatuelist"i
streng_record
biogid (Rbiogid

streng_exp (R	strengExp!
streng_level (RstrengLevel"∫
p_biog_record
biogid (Rbiogid

streng_exp (R	strengExp!
streng_level (RstrengLevel1
chapteridrecord_list (RchapteridrecordList
	chapterid (R	chapterid"
cs_biogbattle_info"¶
sc_biogbattle_info
result (Rresult/
biogid_list (2.p_biog_recordR
biogidList
biogid (Rbiogid/
streng_list (2.streng_recordR
strengList"L
cs_biogbattle_select
biogid (Rbiogid
	chapterid (R	chapterid"©
sc_biogbattle_select
result (Rresult
biogid (Rbiogid
	chapterid (R	chapteridC
dungeon_box_reward (2.p_dungeon_box_rewardRdungeonBoxReward"ó
p_commodity_info!
commodity_id (RcommodityId.
commodity_src (2	.p_rewardRcommoditySrc0
commodity_dest (2	.p_rewardRcommodityDest"ß
sc_biogbattle_shopopen8
commodity_list (2.p_commodity_infoRcommodityList
	chapterid (R	chapterid5
shop_refresh_cost (2	.p_rewardRshopRefreshCost"
cs_biogbattle_shopclose"1
sc_biogbattle_shopclose
result (Rresult"Y
cs_biogbattle_exchange!
commodity_id (RcommodityId
	chapterid (R	chapterid"q
sc_biogbattle_exchange
result (Rresult!
commodity_id (RcommodityId
	chapterid (R	chapterid"\
cs_biogbattle_shoprefresh
	chapterid (R	chapterid!
commodity_id (RcommodityId"º
sc_biogbattle_shoprefresh
result (Rresult6
new_commodity (2.p_commodity_infoRnewCommodity
	chapterid (R	chapterid1
next_need_money (2	.p_rewardRnextNeedMoney"W
p_dungeon_box_reward
	dungeonid (R	dungeonid!
reward (2	.p_rewardRreward"9
cs_biogbattle_chapterinfo
	chapterid (R	chapterid"≤
sc_biogbattle_chapterinfo
result (Rresult/
todaydungeonid_list (RtodaydungeonidList'
rwddungeon_list (RrwddungeonList1
dungeonidrecord_list (RdungeonidrecordListC
dungeon_box_reward (2.p_dungeon_box_rewardRdungeonBoxReward+
enter_war_ger_list (RenterWarGerList"â
cs_biogbattle_fight
	chapterid (R	chapterid
	dungeonid (R	dungeonid
	geridlist (R	geridlist
poslist (Rposlist"∫
sc_biogbattle_fight
result (Rresult2
fight_struct (2.p_fight_structRfightStruct,
fight_reward (2	.p_rewardRfightReward

streng_exp (R	strengExp
	addrolexp (R	addrolexp
	addgerexp (R	addgerexp+
enter_war_ger_list (RenterWarGerList!
streng_level (RstrengLevel"5
cs_biogbattle_openbox
	dungeonid (R	dungeonid"p
sc_biogbattle_openbox
result (Rresult
	dungeonid (R	dungeonid!
reward (2	.p_rewardRreward"x
cs_biogbattle_disposal
	dungeonid (R	dungeonid
line1 (2	.p_lineupRline1
line2 (2	.p_lineupRline2"®
sc_biogbattle_disposal
result (Rresult0
atk_ger_list (2.p_ger_summaryR
atkGerList0
def_ger_list (2.p_ger_summaryR
defGerList#
atkteam_speed (RatkteamSpeed#
atkteam_power (RatkteamPower#
defteam_speed (RdefteamSpeed#
defteam_power (RdefteamPower"
cs_wheel_state"A
sc_wheel_state
state (Rstate
next_sec (RnextSec"
cs_wheel_config"C
sc_wheel_config0
config_info (2.p_wheel_configR
configInfo"
cs_wheel_info"u
sc_wheel_info
my_score (RmyScore

free_times (R	freeTimes*
times_reward_draw (RtimesRewardDraw"ø
p_wheel_config#
one_cost (2.p_moneyRoneCost#
ten_cost (2.p_moneyRtenCost$
box_list (2	.p_rewardRboxList2
times_box_list (2.p_wheel_boxRtimesBoxList,
lucky_reward (2	.p_rewardRluckyReward>
rank_reward_list (2.p_wheel_rank_rewardRrankRewardList
	luck_need (RluckNeed"O
p_wheel_box

need_times (R	needTimes!
reward (2	.p_rewardRreward"ë
p_wheel_rank_reward

begin_rank (R	beginRank
end_rank (RendRank

need_score (R	needScore!
reward (2	.p_rewardRreward"#
cs_wheel_play
type (Rtype"p
sc_wheel_play
result (Rresult*
reward_list (2	.p_rewardR
rewardList
	new_score (RnewScore"%
cs_wheel_draw
score (Rscore"p
sc_wheel_draw
result (Rresult!
reward (2	.p_rewardRreward$
new_draw_score (RnewDrawScore"
cs_wheel_rank_list"@
sc_wheel_rank_list*
	rank_list (2.p_wheel_rankRrankList"U
p_wheel_rank
rank (Rrank
	role_name (	RroleName
score (Rscore"
cs_wheel_lucky_man"1
sc_wheel_lucky_man
	role_name (	RroleName"
cs_digitalcore_info"ô
sc_digitalcore_info
result (Rresult>
ger_coreinfo_lists (2.p_ger_core_infoRgerCoreinfoLists*
b_replace_consume (RbReplaceConsume"^
p_ger_core_info
initid (Rinitid3
coreinfo_lists (2.p_core_infoRcoreinfoLists":
p_core_info
core_id (RcoreId
star (Rstar"D
cs_digitalcore_tupo
gerid (Rgerid
core_id (RcoreId"b
sc_digitalcore_tupo
result (Rresult3
ger_coreinfo (2.p_ger_core_infoRgerCoreinfo"J
cs_digitalcore_activation
gerid (Rgerid
core_id (RcoreId"h
sc_digitalcore_activation
result (Rresult3
ger_coreinfo (2.p_ger_core_infoRgerCoreinfo"G
cs_digitalcore_selreplace*
b_replace_consume (RbReplaceConsume"_
sc_digitalcore_selreplace
result (Rresult*
b_replace_consume (RbReplaceConsume"
cs_chicken_state"C
sc_chicken_state
state (Rstate
next_sec (RnextSec"B
cs_chicken_rank_list
type (Rtype
offset (Roffset"n
sc_chicken_rank_list
rank (Rrank
score (Rscore,
	rank_list (2.p_chicken_rankRrankList"t
p_chicken_rank
rank (Rrank
score (Rscore
	role_name (	RroleName
	server_id (RserverId",
cs_chicken_rank_reward
type (Rtype"Z
sc_chicken_rank_reward@
rank_reward_list (2.p_chicken_rank_rewardRrankRewardList"t
p_chicken_rank_reward

begin_rank (R	beginRank
end_rank (RendRank!
reward (2	.p_rewardRreward"
cs_chicken_sign"K
sc_chicken_sign
result (Rresult 
avg_sign_sec (R
avgSignSec"
cs_chicken_sign_cancel"0
sc_chicken_sign_cancel
result (Rresult"
sc_chicken_wait_sync"=
sc_chicken_sign_sync%
role (2.p_chicken_publicRrole"z
sc_chicken_begin
buf_id (RbufId2
player_list (2.p_chicken_publicR
playerList
	start_sec (RstartSec"™
p_chicken_public
role_id (RroleId
	role_name (	RroleName
icon (Ricon
vip_lv (RvipLv
	server_id (RserverId
trainer (Rtrainer"4
cs_chicken_set_line
line (2	.p_lineupRline"L
sc_chicken_set_line
result (Rresult
line (2	.p_lineupRline"
cs_chicken_init"Ä
sc_chicken_init
result (Rresult1

my_summary (2.p_chicken_summaryR	mySummary2
player_list (2.p_chicken_playerR
playerList2
player_info (2.p_chicken_publicR
playerInfo
round (Rround$
next_round_sec (RnextRoundSec"¥
p_chicken_summary
fight_power (R
fightPower

hp_percent (R	hpPercent
kill_num (RkillNum$
	attr_list (2.p_attrRattrList
init_buf_id (R	initBufId"í
p_chicken_player
role_id (RroleId
pos (Rpos
state (Rstate
target (Rtarget

arrive_sec (R	arriveSec
show_ger (RshowGer
stage (Rstage

hp_percent (R	hpPercent
clothes	 (Rclothes
	expiresec
 (R	expiresec"*
cs_chicken_fort
fort_id (RfortId"¢
sc_chicken_fort
fort_id (RfortId 
next_ref_sec (R
nextRefSec
	play_list (RplayList 
box_buf (2.p_attrRboxBuf
buf_id (RbufId"
cs_chicken_replay"@
sc_chicken_replay+
replays (2.p_chicken_replayRreplays"è
p_chicken_replay
	replay_id (RreplayId"
atk_role_name (	RatkRoleName"
def_role_name (	RdefRoleName
result (Rresult"5
cs_chicken_view_replay
	replay_id (RreplayId"Y
sc_chicken_view_replay
result (Rresult'
replay (2.p_fight_structRreplay"Y
sc_chicken_fort_fight
win_role_id (R	winRoleId 
lose_role_id (R
loseRoleId"´
sc_chicken_fort_fight_win"
tar_role_name (	RtarRoleName 
new_kill_num (R
newKillNum"
add_attr (2.p_attrRaddAttr$
new_hp_percent (RnewHpPercent"ÿ
sc_chicken_fort_fight_lose
killer (	Rkiller
kill_num (RkillNum
	life_time (RlifeTime
rank (Rrank*
base_reward (2	.p_rewardR
baseReward*
kill_reward (2	.p_rewardR
killReward"†
sc_chicken_win
kill_num (RkillNum
	life_time (RlifeTime*
base_reward (2	.p_rewardR
baseReward*
kill_reward (2	.p_rewardR
killReward"N
sc_chicken_round
round (Rround$
next_round_sec (RnextRoundSec"A
sc_chicken_play_sync)
player (2.p_chicken_playerRplayer"E
sc_chicken_summary_sync*
player (2.p_chicken_summaryRplayer"
cs_chicken_ask"(
sc_chicken_ask
result (Rresult")
cs_chicken_move
target (Rtarget")
sc_chicken_move
result (Rresult"
cs_chicken_box"ñ
sc_chicken_box
result (Rresult

join_times (R	joinTimes.
config_reward (2	.p_rewardRconfigReward

need_times (R	needTimes"
cs_chicken_box_draw"P
sc_chicken_box_draw
result (Rresult!
reward (2	.p_rewardRreward"
cs_chicken_leave"*
sc_chicken_leave
result (Rresult"
cs_chicken_eat_buf"`
sc_chicken_eat_buf
result (Rresult
buf_id (RbufId
attr (2.p_attrRattr"
cs_precious_info"C
sc_precious_info/
preciouslist (2.p_preciousRpreciouslist"ñ

p_precious

preciousid (R
preciousid
tmpid (Rtmpid
exp (Rexp
level (Rlevel
equipid (Requipid
pos (Rpos"_
cs_precious_imbue
equipid (Requipid
pos (Rpos

preciousid (R
preciousid"+
sc_precious_imbue
result (Rresult"4
cs_precious_unload

preciousid (R
preciousid",
sc_precious_unload
result (Rresult"O
cs_precious_uprank

preciousid (R
preciousid
cost_ids (RcostIds",
sc_precious_uprank
result (Rresult"ï
sc_precious_notify%
newlist (2.p_preciousRnewlist+

updatelist (2.p_preciousR
updatelist+

deletelist (2.p_preciousR
deletelist"
cs_gather_info"‚
sc_gather_info)

gatherlist (2	.p_gatherR
gatherlist 
npclist (2.p_npcRnpclist
dun_lv (RdunLv

today_harm (R	todayHarm
is_complete (R
isComplete
max_lv (RmaxLv
dun_id (RdunId"-
cs_gather_npc_uplevel
npcid (Rnpcid"/
sc_gather_npc_uplevel
result (Rresult"-
cs_gather_npc_through
npcid (Rnpcid"/
sc_gather_npc_through
result (Rresult"M
cs_gather_enhance
gatherid (Rgatherid
	enhanceid (R	enhanceid"+
sc_gather_enhance
result (Rresult",
cs_gather_npc_unlock
npcid (Rnpcid".
sc_gather_npc_unlock
result (Rresult"5
cs_gather_enhance_reset
gatherid (Rgatherid"1
sc_gather_enhance_reset
result (Rresult"ç
sc_gather_notify#
newlist (2	.p_gatherRnewlist)

updatelist (2	.p_gatherR
updatelist)

deletelist (2	.p_gatherR
deletelist"à
sc_gather_npc_notify 
newlist (2.p_npcRnewlist&

updatelist (2.p_npcR
updatelist&

deletelist (2.p_npcR
deletelist"o
p_gather
gather (2.p_gerRgather
	costpoint (R	costpoint%
extra (2.p_gather_extraRextra"_
p_npc
npcid (Rnpcid
level (Rlevel
point (Rpoint
count (Rcount"6
p_gather_extra
id (Rid
level (Rlevel"]
cs_gather_fight_request
gatherid (Rgatherid
pos (Rpos
level (Rlevel"e
sc_gather_fight_request
result (Rresult2
fight_struct (2.p_fight_structRfightStruct"L
cs_gather_fight_report2
fight_struct (2.p_fight_structRfightStruct"b
sc_gather_fight_report
result (Rresult
harm_val (RharmVal
is_win (RisWin"
cs_horse_info"X
sc_horse_info
result (Rresult
stage (Rstage
run_time (RrunTime"T
p_votes_info
	trainerid (R	trainerid
votes (Rvotes
sec (Rsec"
cs_horse_selectinfo"â
sc_horse_selectinfo
result (Rresult,

votes_info (2.p_votes_infoR	votesInfo,

self_votes (2.p_votes_infoR	selfVotes"i
p_odds_info
	trainerid (R	trainerid*
money_spent (2	.p_rewardR
moneySpent
sec (Rsec"
cs_horse_guessinfo"Å
sc_horse_guessinfo
result (Rresult)
	odds_list (2.p_odds_infoRoddsList*
my_most_trainerid (RmyMostTrainerid

extra_odds (R	extraOdds2
track_ret_list (2.p_track_retRtrackRetList)
	self_odds (2.p_odds_infoRselfOdds"y
p_inspireinfo
	trainerid (R	trainerid
inspire_num (R
inspireNum
fly_num (RflyNum
sec (Rsec"
cs_horse_inspireinfo"˝
sc_horse_inspireinfo
result (Rresult0
inspireinfo (2.p_inspireinfoRinspireinfo2
track_ret_list (2.p_track_retRtrackRetList4
odds_ret_list (2.p_odds_ret_infoRoddsRetList1
self_inspire (2.p_inspireinfoRselfInspire";
sc_horse_notify_inspire_fly
	trainerid (R	trainerid"S
p_simulat_info
minute (Rminute)
	rank_info (2.p_rank_infoRrankInfo"?
p_rank_info
	trainerid (R	trainerid
rank (Rrank"
cs_horse_real_match"¿
sc_horse_real_match
result (Rresult2
simulat_list (2.p_simulat_infoRsimulatList)
	real_rank (2.p_rank_infoRrealRank2
track_ret_list (2.p_track_retRtrackRetList"2
cs_horse_selection
	trainerid (R	trainerid"j
sc_horse_selection
result (Rresult!
my_trainerid (RmyTrainerid
my_votes (RmyVotes"K
cs_horse_precom_guess
	trainerid (R	trainerid
count (Rcount"”
sc_horse_precom_guess
result (Rresult!
my_trainerid (RmyTrainerid

extra_odds (R	extraOdds
count (Rcount
money (2	.p_rewardRmoney)
	odds_list (2.p_odds_infoRoddsList"F
cs_horse_inspire
	trainerid (R	trainerid
count (Rcount"ì
sc_horse_inspire
result (Rresult!
my_trainerid (RmyTrainerid#
inspire_count (RinspireCount
money (2	.p_rewardRmoney"-
sc_horse_notify_stage
stage (Rstage"
cs_horse_leave"(
sc_horse_leave
result (Rresult"
cs_horse_record"Z
sc_horse_record
result (Rresult/
record_list (2.p_record_infoR
recordList"ë
p_record_info
time (Rtime
stage (Rstage*
money_spent (2	.p_rewardR
moneySpent*
money_gains (2	.p_rewardR
moneyGains"A
p_track_ret
	trainerid (R	trainerid
track (Rtrack"C
p_odds_ret_info
rank (Rrank
	trainerid (R	trainerid"
cs_horse_enter"(
sc_horse_enter
result (Rresult"
cs_fextreme_box"T
sc_fextreme_box(
family_win_count (RfamilyWinCount
end_sec (RendSec"
cs_homefight_info"†
sc_homefight_info

left_times (R	leftTimes
	boss_type (RbossType
in_team (RinTeam

in_dungeon (R	inDungeon
is_open (RisOpen"
cs_homefight_team":
sc_homefight_team%
team (2.p_homefight_teamRteam"y
p_homefight_team

dungeon_lv (R	dungeonLv
is_open (RisOpen-
members (2.p_homefight_memberRmembers"Á
p_homefight_member
role_id (RroleId
	role_name (	RroleName
icon (Ricon
vip_lv (RvipLv 
ger (2.p_ger_summaryRger
power (Rpower
is_ready (RisReady

is_caption (R	isCaption"
cs_homefight_dungeon"Ω
sc_homefight_dungeon
end_sec (RendSec
stage (Rstage0
members (2.p_homefight_member_dtRmembers!
dungeon_fort (RdungeonFort!
boss_dungeon (RbossDungeon"Ñ
p_homefight_member_dt
role_id (RroleId
	role_name (	RroleName
ger_type (RgerType
power (Rpower

hp_percent (R	hpPercent
state (Rstate
pos (Rpos
tar_pos (RtarPos

arrive_sec	 (R	arriveSec

reborn_sec
 (R	rebornSec
buf_list (RbufList
harm_val (RharmVal
fort_id (RfortId
atk_pos (RatkPos",
cs_homefight_fort
fort_id (RfortId"e
sc_homefight_fort
fort_id (RfortId7
dungeon_list (2.p_homefight_dungeonRdungeonList"
p_homefight_dungeon

dungeon_id (R	dungeonId
pos (Rpos
atk_end_sec (R	atkEndSec
is_down (RisDown"
cs_homefight_shop"G
sc_homefight_shop2
bought_list (2.p_homefight_sellR
boughtList"H
p_homefight_sell
sell_id (RsellId
	buy_times (RbuyTimes"
cs_homefight_create_team"Y
sc_homefight_create_team
result (Rresult%
team (2.p_homefight_teamRteam"
cs_homefight_quick_join"X
sc_homefight_quick_join
result (Rresult%
team (2.p_homefight_teamRteam"8
cs_homefight_join_team
tar_role_id (R	tarRoleId"W
sc_homefight_join_team
result (Rresult%
team (2.p_homefight_teamRteam"0
cs_homefight_set_open
is_open (RisOpen"V
sc_homefight_set_open
result (Rresult%
team (2.p_homefight_teamRteam"*
cs_homefight_kick
tar_id (RtarId"R
sc_homefight_kick
result (Rresult%
team (2.p_homefight_teamRteam"
sc_homefight_kick_notify"4
cs_homefight_mark_ready
is_ready (RisReady"X
sc_homefight_mark_ready
result (Rresult%
team (2.p_homefight_teamRteam"
cs_homefight_new_team"V
sc_homefight_new_team
result (Rresult%
team (2.p_homefight_teamRteam"0
cs_homefight_change_ger
ger_id (RgerId"X
sc_homefight_change_ger
result (Rresult%
team (2.p_homefight_teamRteam".
cs_homefight_set_level
level (Rlevel"W
sc_homefight_set_level
result (Rresult%
team (2.p_homefight_teamRteam"
cs_homefight_start",
sc_homefight_start
result (Rresult"
cs_homefight_leave",
sc_homefight_leave
result (Rresult"J
cs_homefight_invite
tar_role (RtarRole
content (	Rcontent"-
sc_homefight_invite
result (Rresult"?
sc_homefight_team_sync%
team (2.p_homefight_teamRteam",
cs_homefight_move
tar_pos (RtarPos"^
sc_homefight_move
result (Rresult1
new_role (2.p_homefight_member_dtRnewRole"+
cs_homefight_buy
sell_id (RsellId"ë
sc_homefight_buy
result (Rresult1
new_role (2.p_homefight_member_dtRnewRole2
bought_list (2.p_homefight_sellR
boughtList"A
cs_homefight_request
fort_id (RfortId
pos (Rpos"t
sc_homefight_request
result (Rresult
pos (Rpos2
fight_struct (2.p_fight_structRfightStruct"t
cs_homefight_report
fort_id (RfortId
pos (Rpos2
fight_struct (2.p_fight_structRfightStruct"b
sc_homefight_report
result (Rresult
pos (Rpos!
attacker_win (RattackerWin"
cs_homefight_fight_boss"£
sc_homefight_fight_boss
result (Rresult2
fight_struct (2.p_fight_structRfightStruct
harm_val (RharmVal!
harm_percent (RharmPercent"
cs_homefight_back"^
sc_homefight_back
result (Rresult1
new_role (2.p_homefight_member_dtRnewRole"6
sc_homefight_dungeon_notify
fort_id (RfortId"M
sc_homefight_role_notify1
new_role (2.p_homefight_member_dtRnewRole"
cs_homefight_boss"H
sc_homefight_boss
atker (Ratker

hp_percent (R	hpPercent"Î
sc_homefight_end
is_win (RisWin!
reward (2	.p_rewardRreward5

all_member (2.p_homefight_member_dtR	allMember,
extra_reward (2	.p_rewardRextraReward
used_sec (RusedSec

dungeon_lv (R	dungeonLv"*
sc_homefight_state
state (Rstate"
sc_homefight_battle_end"
cs_choicefight_info"Å
sc_choicefight_info"
is_normal_act (RisNormalAct%
curn_chapterid (RcurnChapterid
curn_buffid (R
curnBuffid2
normal_dungeonid_list (RnormalDungeonidList#
choice_energy (RchoiceEnergy
next_add (RnextAdd

hard_times (R	hardTimes
is_hard_act (R	isHardAct%
curh_chapterid	 (RcurhChapterid
curh_buffid
 (R
curhBuffid

boss_fight (R	bossFight
boss_buy (RbossBuy.
hard_dungeonid_list (RhardDungeonidList
hard_buy (RhardBuy"+
cs_choicefight_active
type (Rtype"y
sc_choicefight_active
result (Rresult
	chapterid (R	chapterid
buffid (Rbuffid
type (Rtype"X
sc_choicefight_recover#
choice_energy (RchoiceEnergy
next_add (RnextAdd"L
cs_choicefight_set_line
type (Rtype
line (2	.p_lineupRline"d
sc_choicefight_set_line
result (Rresult
type (Rtype
line (2	.p_lineupRline")
cs_choicefight_line
type (Rtype"H
sc_choicefight_line
type (Rtype
line (2	.p_lineupRline"P
cs_choicefight_fight_request
type (Rtype
	dungeonid (R	dungeonid"ø
sc_choicefight_fight_request
result (Rresult
type (Rtype
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct!
reward (2	.p_rewardRreward"}
cs_choicefight_report
type (Rtype
	dungeonid (R	dungeonid2
fight_struct (2.p_fight_structRfightStruct"é
sc_choicefight_report
result (Rresult
type (Rtype
	dungeonid (R	dungeonid
is_win (RisWin
is_pass (RisPass!
reward (2	.p_rewardRreward*
pass_reward (2	.p_rewardR
passReward,
extra_reward (2	.p_rewardRextraReward"*
cs_choicefight_reset
type (Rtype"B
sc_choicefight_reset
result (Rresult
type (Rtype"
cs_choicefight_buy"G
sc_choicefight_buy
result (Rresult
boss_buy (RbossBuy"
cs_choicefight_hard_buy"L
sc_choicefight_hard_buy
result (Rresult
hard_buy (RhardBuy"1
cs_gercard_info
ger_id_list (R	gerIdList";
sc_gercard_info(
	card_info (2.p_ger_cardRcardInfo"
cs_gercard_last"<
sc_gercard_last)
	last_wash (2.p_last_washRlastWash"{
p_last_wash
ger_id (RgerId
pos (Rpos
type (Rtype/
	card_list (2.p_ger_card_detailRcardList"T

p_ger_card
ger_id (RgerId/
	card_list (2.p_ger_card_detailRcardList"ü
p_ger_card_detail
pos (Rpos
colour (Rcolour-
	base_attr (2.p_ger_card_attrRbaseAttr1
extra_attrs (2.p_ger_card_attrR
extraAttrs"V
p_ger_card_attr
index (Rindex
attr (2.p_attrRattr
val (Rval"<
cs_gercard_unlock
ger_id (RgerId
pos (Rpos"S
sc_gercard_unlock
result (Rresult&
new_card (2.p_ger_cardRnewCard"É
cs_gercard_wash
ger_id (RgerId
pos (Rpos
type (Rtype
times (Rtimes

locked_pos (R	lockedPos"Z
sc_gercard_wash
result (Rresult/
	card_list (2.p_ger_card_detailRcardList"(
cs_gercard_chose
index (Rindex"R
sc_gercard_chose
result (Rresult&
new_card (2.p_ger_cardRnewCard"
cs_gercard_clean"*
sc_gercard_clean
result (Rresult"í
p_test_message
int32 (Rint32
unt32 (Runt32
sint32 (Rsint32
fixed32 (Rfixed32
int64 (Rint64
unt64 (Runt64
sint64 (Rsint64
fixed64 (Rfixed64
bool	 (Rbool
string
 (	Rstring
string2 (	Rstring2"X
cs_test_message
id (Rid!
msg (2.p_test_messageRmsg
name (	Rname"~
sc_test_message
id (Rid!
msg (2.p_test_messageRmsg
name (	Rname
arr (Rarr
arr2 (Rarr2
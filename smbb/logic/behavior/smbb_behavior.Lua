---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 01. 八月 2018 17:30
---------------------------------------------------------------------
local role_data = require("logic.role.role_data")
local srv_id = 1
local smbb_behavior = {}

function smbb_behavior.stats_id()
    return "smbb_game_" .. srv_id
end

function smbb_behavior.sync_role()
    local stats_id = smbb_behavior.stats_id()
    local role_info = role_data.get_role_info()
    local roleid = role_info.roleid or 0
    local moneylist = role_data.get_money_list()
    local pay_gold = moneylist[MONEY_TYPEID_PAIDGOLD] or 0
    local free_gold = moneylist[MONEY_TYPEID_FREEGOLD] or 0
    local coin = moneylist[MONEY_TYPEID_COIN] or 0
    local role_extra = role_data.get_role_extra()
    local option_map = role_extra.option_map or {}
    local guideval = option_map.guideval
    local msg = {
        roleid = roleid,
        rolename = role_info.roleid or "",
        accid = role_info.accid,
        raccid = role_info.raccid,
        familyid = role_info.familyid,
        familyname = role_info.familyname,
        level = role_info.rolelv,
        exp = role_info.roleexp,
        gold_pay = pay_gold,
        gold_bonus = free_gold,
        coin = coin,
        vip_level = role_info.viplv,
        atkpower = role_info.atkpower,
        defpower = role_info.defpower,
        last_login_time = role_info.lastlogin,
        last_logout_time = role_info.lastlogout,
        sdk_type = role_info.sdk_type,
        reg_sdk_type = role_info.reg_srctype,
        adv_type = role_info.advtype,
        fc_type = role_info.fc_type,
        is_inner = role_info.is_inner,
        totalpaid = role_info.totalpaid,
        ip = role_info.ip,
        mac = role_info.mac,
        devid = role_info.devid,
        reg_area = role_info.regarea,
        sign_time = role_info.sign_time,
        phone_model = role_info.phone_model,
        sys_version = role_info.sys_version,
        guide_value = guideval,
    }
    local partion = roleid % 7
    local Message = format_gamedata(stats_id, "g_role", "roleid", roleid, { msg })
    behavior.produce(partion, Message)
end

return smbb_behavior
---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 07. 七月 2018 14:37
---------------------------------------------------------------------
local ets_lib = require("logic.lib.ets_lib")
local skynet = require "smbb_skynet"
local smbb_mongo = require("logic.db.smbb_mongo")
local role_data = role_data
local smbb_misc = smbb_misc
local data_role_uplevel = require("config.data_role_uplevel")

local role_lib = {}

---join_online_table
---@param roleid number
function role_lib.join_online_table(roleid)
    ets_lib.insert(SHARE_TABLES.role_online, roleid, skynet.self())
end

---leave_online_table
---@param roleid number
function role_lib.leave_online_table(roleid)
    ets_lib.delete(SHARE_TABLES.role_online, roleid)
end

---is_online 角色是否在线
---@param roleid number
---@return boolean
function role_lib.is_online(roleid)
    return smbb_misc.agent_address(roleid) ~= nil
end

---p_role_info
---@param roleinfo role_info
---@return p_role_info
function role_lib.p_role_info(role_info)
    ---@type p_role_info
    local p_role_info = {
        roleid = role_info.roleid,
        rolename = role_info.rolename,
        raccid = role_info.raccid,
        accname = role_info.accname,
        familyid = role_info.familyid,
        familyname = role_info.familyname,
        icon = role_info.icon,
        frame = role_info.frame,
        rolelv = role_info.rolelv,
        roleexp = role_info.roleexp,
        viplv = role_info.viplv,
        vipexp = role_info.vipexp,
        atkpower = role_info.atkpower,
        defpower = role_info.defpower,
        lastlogin = role_info.lastlogin,
        lastlogout = role_info.lastlogout,
        srctype = role_info.srctype,
        subtype = role_info.subtype,
        totalpaid = role_info.totalpaid,
        regtime = role_info.regtime,
    }
    return p_role_info
end

---@param roleinfo role_info
---@return role_public
function role_lib.role_public(roleinfo)
    local role_public = RECORD.role_public_t()
    role_public.roleid = roleinfo.roleid
    role_public.rolename = roleinfo.rolename
    role_public.familyid = roleinfo.familyid
    role_public.familyname = roleinfo.familyname
    role_public.icon = roleinfo.icon
    role_public.frame = roleinfo.frame
    role_public.rolelv = roleinfo.rolelv
    role_public.viplv = roleinfo.viplv
    role_public.atkpower = roleinfo.atkpower
    role_public.defpower = roleinfo.defpower
    role_public.lastlogout = roleinfo.lastlogout
    return role_public
end

---update_role_public
---@param role role_info|role_public
function role_lib.update_role_public(role)
    local role_public
    if is_record(role, RECORD.role_info_t) then
        role_public = role_lib.role_public(role)
    elseif is_record(role, RECORD.role_public_t) then
        role_public = clone(role)
    end
    ets_lib.insert(SHARE_TABLES.role_public, role_public.roleid, role_public)
end

---get_role_public
---@param roleid number
---@return role_public
function role_lib.get_role_public(roleid)
    local ets_find = ets_lib.lookup(SHARE_TABLES.role_public, roleid)
    if is_record(ets_find, RECORD.role_public_t) then
        return ets_find
    end
    local db_find = smbb_mongo.get(DATABASE_TABLES.role_info, roleid)
    if db_find and is_record(db_find, RECORD.role_info_t) then
        local role_public = role_lib.role_public(db_find)
        role_lib.update_role_public(role_public)
        return role_public
    end
    local role_public = RECORD.role_public_t()
    role_public.roleid = roleid
    return role_public
end



local function hook_levelup(old_role_info, role_info, reason)

end

---new_lv
---@param rolelv number
---@param exp number
---@return rolelv,role_exp
local function new_lv(rolelv, exp)
    local next_lv = rolelv + 1
    local next_lv_exp = data_role_uplevel[next_lv]
    if not next_lv_exp then
        -- 这里也得考虑下如果哪一级没配，最好是和最高等级匹配下
        local level_keys = table.keys(data_role_uplevel)
        local topexp = data_role_uplevel[table.maxn(level_keys)]
        local new_exp = math.min(topexp, exp)
        return rolelv, new_exp
    end
    if exp < next_lv_exp then
        return rolelv, exp
    else
        return new_lv(next_lv, exp)
    end
end

---add_exp_2
---@param role_info role_info
---@param add_exp number
---@return role_info
local function add_exp_2(role_info, add_exp)
    local old_rolelv = role_info.rolelv
    local old_exp = role_info.roleexp
    local new_rolelv, new_exp = new_lv(old_rolelv, old_exp + add_exp)
    role_info.rolelv = new_rolelv
    role_info.roleexp = new_exp
    return role_info
end

---add_exp
---@param add_exp number @增加的经验值
---@param reason number @增加经验的原因
---@return role_info
function role_lib.add_exp(add_exp, reason)
    local role_info = role_data.get_role_info()
    if add_exp <= 0 then
        return role_info
    end
    local old_role_info = copy(role_info)
    local old_lv = role_info.rolelv or 0
    role_info = add_exp_2(role_info, add_exp)
    local new_rolelv = role_info.rolelv
    if old_lv < new_rolelv then
        hook_levelup(old_role_info, role_info, reason)
    end
    role_data.set_role_info(role_info)
    role_lib.update_role_public(role_info)
    return role_info
end

---exp_update_notify
---@param role_info role_info
function role_lib.exp_update_notify(role_info)
    local rolelv = role_info.rolelv
    local roleexp = role_info.roleexp
    ---@type sc_role_exp_notify
    local sc_role_exp_notify = { rolelv = rolelv, roleexp = roleexp }
    smbb_misc.send_client(SC_ROLE_EXP_NOTIFY, sc_role_exp_notify)
end

return role_lib
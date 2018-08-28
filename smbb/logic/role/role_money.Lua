---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
-- 货币接口
-- @end
-- Created : 05. 七月 2018 18:50
---------------------------------------------------------------------

local money_lib = require("logic.lib.money_lib")
local bson = require("bson")

local role_money = {}

function role_money.fulsh_to_db(money_info)
    return { val = bson.binary(smbb_util.compress(money_info)) }
    --return { val = smbb_util.table_to_string(money_info) }
end

function role_money.fulsh_from_db(money_info)
    if money_info then
        local type, val = bson.type(money_info.val)
        if type == "binary" then
            return smbb_util.uncompress_retrun_table(val)
        end
    end
end

function role_money.init()
    local money_info = smbb_mongo.get(DATABASE_TABLES.money_info, role_data.get_role_id())
    money_info = role_money.fulsh_from_db(money_info)
    if money_info and money_info._t == "money_info" then
        return money_info
    else
        --@todo 建立角色时可能要给一些基础货币
        money_info = RECORD.money_info_t()
        money_info.roleid = role_data.get_role_id()
        return money_info, true
    end
end

function role_money.cs_money_info(_)
    local money_info = role_data.get_money_info()
    local p_money_list = money_lib.money_list_to_p_money_list(money_info.moneylist)
    smbb_misc.send_client(SC_MONEY_INFO, { moneylist = p_money_list })
end

return role_money
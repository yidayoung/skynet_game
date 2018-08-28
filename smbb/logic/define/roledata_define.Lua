---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 13. 七月 2018 21:00
---------------------------------------------------------------------
local table = table

local key_list = {}
local function add_key(key)
    assert(DATABASE_TABLES[key])
    assert(not table.member(key_list, key))
    table.insert(key_list, key)
    return key
end
-- 所有的个人数据都必须在这里定义
-- 需要注意的是,如果agent在启动的时候没有主动的初始化，则必须提供 $module.init()方法
-- 例如 money_info = "role_money", money_info没有显示的初始化，则必须确保有role_money.init()方法
-- 而且ROLE_DATA_LIST的key值最后要DATABASE_TABLES做匹配，找到存储的数据库表，所以必须在DATABASE_TABLES存在
ROLE_DATA_LIST = {
    --state = { key = "state", module = "role_state" },
    role_info  = "role_role",
    money_info = "role_money",
    rmail_info = "role_mail",
    ger_info   = "role_ger",
    role_extra = "role_extra",
    sign_info = "role_sign",
}

--[[
 {xx_info = handle_module} => {xx_info = {key = "xx_info", module = handle_module}}
]]
table.map(ROLE_DATA_LIST, function(module, key)
    return { key = add_key(key),module = module }
end)

table.read_only(ROLE_DATA_LIST)

DATABASE_TABLES_DUMP_FUN = setmetatable({},
        {
            __newindex = function(t, k, v)
                assert(false)
            end,
            __index    = function(t, k)
                -- 这里的key来自于ROLE_DATA_LIST[$...].key,也就是在role_data中的key值
                assert(DATABASE_TABLES[k] ~= nil)
                local to_db_fun = require("logic.role." .. ROLE_DATA_LIST[k].module).fulsh_to_db
                if to_db_fun then
                    return to_db_fun
                end
            end
        }
)
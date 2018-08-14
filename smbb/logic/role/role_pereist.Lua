---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 13. 七月 2018 20:58
---------------------------------------------------------------------
local skynet =require("smbb_skynet")
local role_pereist = {}

function role_pereist.pereist_all()
    local data_set = role_data.get_dataset()
    local roleid = role_data.get_role_id()
    for key, info in pairs(data_set) do
        if info.is_dirty then
            --@todo set失败的异常处理
            --@todo key和表名是否完全对应？val可能还需要额外处理？
            --@todo mongo set 会阻塞，is_dirty应该先标记？
            info.is_dirty = false
            local player_info = copy(info.val)
            if DATABASE_TABLES_DUMP_FUN[key] then
                player_info = DATABASE_TABLES_DUMP_FUN[key](player_info)
            end
            --spent_print(string.format("dump %s, roleid:%d", key, roleid),info)
            smbb_mongo.set(DATABASE_TABLES[key], roleid, player_info)
        end
    end
end

function role_pereist.hook_pereist()
    skynet.timeout(6 * 100, function()
        role_pereist.hook_pereist()
        role_pereist.pereist_all()
    end)
end

return role_pereist
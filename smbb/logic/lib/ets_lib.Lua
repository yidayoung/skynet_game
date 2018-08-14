---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 07. 七月 2018 17:06
---------------------------------------------------------------------
local datacenter = require "skynet.datacenter"

local ets_lib = {}

--function ets_lib.insert(tbl, index, val)
--    skynet.call(service, "lua", "insert", tbl, index, val)
--end
--
--function ets_lib.delete(tbl, index)
--    skynet.call(service, "lua", "delete", tbl, index)
--end
--
--function ets_lib.delete_all_objects(tbl)
--    skynet.call(service, "lua", "delete_all_objects", tbl)
--end
--
--function ets_lib.lookup(tbl, key)
--    return skynet.call(service, "lua", "lookup", tbl, key)
--end
--
--function ets_lib.new(tbl)
--    return skynet.call(service, "lua", "new", tbl)
--end

function ets_lib.insert(tbl, index, val)
    datacenter.set(tbl, index, val)
end

function ets_lib.delete(tbl, index)
    datacenter.set(tbl, index, nil)
end

function ets_lib.delete_all_objects(tbl)
    datacenter.set(tbl, nil)
end

function ets_lib.lookup(tbl, key)
    return datacenter.get(tbl, key)
end

function ets_lib.member(tbl, key)
    if ets_lib.lookup(tbl, key) then
        return true
    end
    return false
end

return ets_lib
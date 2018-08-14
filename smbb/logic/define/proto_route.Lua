---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
-- proto消息的路由转发逻辑
-- @end
-- Created : 06. 七月 2018 10:15
---------------------------------------------------------------------



--如果消息不是由agent处理,则需要在这里配上这些特殊消息和他们对应的服务名字
PROTO_ROUTE = {
    cs_mail_info = SERVICE.mail_service,
    cs_mail_draw = SERVICE.mail_service,
    cs_mail_read = SERVICE.mail_service,
}

--对于大多数消息是不用处理的,例如cs_box_info,会根据两边的_裁取 box字段再拼接role_头
--默认由agent自己处理
--只有不符合这个规则的特殊消息才需要手动添加到PROTO_MODULE中
PROTO_MODULE = {
    cs_handshake = "role_account",
    cs_heart = "role_account",
    cs_version = "role_account",
}

local function take_cmd_module(protoName)
    protoName = string.match(protoName, "cs_(.-)_")
    if protoName then
        return "role_" .. protoName
    else
        return nil
    end
end

local route_meta = {
    __index = function(table, index)
        return rawget(table, index) or take_cmd_module(index)
    end,
    __newindex = function(_, index, value)
        skynet.error(string.format("PROTO_MODULE set err, key:~s,value:~s", index, value))
    end,
    __tostring = function(table)
        return "[proto_route :	" .. spent(table) .. "]"
    end
}

setmetatable(PROTO_MODULE, route_meta)

return PROTO_MODULE
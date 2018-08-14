---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 28. 七月 2018 18:12
---------------------------------------------------------------------

local errors = {}

function errmsg(ec)
    if not ec then
        return "nil"
    end
    return errors[ec].desc
end

local function add(err)
    assert(errors[err.code] == nil, string.format("have the same error code[%x], msg[%s]", err.code, err.message))
    errors[err.code] = { desc = err.desc, type = err.type }
    return err.code
end

RPC_ERROR = {
    success = add { code = 0x01, desc = "请求成功" },
    node_nil = add { code = 0x02, desc = "请求节点为nil" },
    service_nil = add { code = 0x03, desc = "请求服务为nil" },
    node_offline = add { code = 0x04, desc = "节点不在线" },
    service_stoped = add { code = 0x05, desc = "服务故障" },
}

ERR_CODE = {
    SYS_ERR = 0,
    [SC_ACCOUNT_CREATE] = {
        success =  { code = 0x101, desc = "创建失败，名字长度限制", },
        to_long =  { code = 0x102, desc = "长度限制", },
        bad_char =  { code = 0x103, desc = "含有非法字符", },

    },
}

local function roate(tbl)
    local new_tbl = copy(tbl)
    for protoname, errnos in pairs(new_tbl) do
        if type(errnos) == "table" then
            local new_errnos = {}
            for _, errs in pairs(errnos) do
                new_errnos[errs.code] = errs
            end
            new_tbl[protoname] = new_errnos
        end
    end
    return new_tbl
end

ERR_CODE_CLIENT = roate(ERR_CODE)

local skynet = require "skynet"
local service = require("lualib.smbb_sevice")

local queue = require "skynet.queue"
local cs = queue()

-- config_lib 里有share_data 必须在启动之前就注册, 而且很多模块依赖config_lib,所以必须在前
--config_lib = require("logic.lib.config_lib")
requester = require("lualib.requester")
role_data = require "logic.role.role_data"
smbb_misc = require "logic.tool.smbb_misc"
smbb_util = require "logic.tool.smbb_util"
smbb_id = require "logic.tool.smbb_id"
reward_lib = require("logic.lib.reward_lib")
smbb_mongo = require("logic.db.smbb_mongo")
logger = require("lualib.logger")
time_wheel = require("logic.tool.time_wheel")

local role_data = role_data
local smbb_util = smbb_util
local table = table
local logger = logger
local time_wheel = time_wheel

require("logic.define.roledata_define")

local smbb_pb = require("logic.tool.smbb_pb")
local role_account = require("logic.role.role_account")
local agent_lib = require("logic.lib.agent_lib")

local function do_dispatch(protoName, msg, ccd)
    local local_ccd = role_account.next_ccd_spec()
    --local_ccd 为空的时候 只允许握手消息，如果不为空则必须校验
    if not ((local_ccd and ccd == local_ccd) or
            ((not local_ccd) and protoName == PROTO_MAP[CS_HANDSHAKE])) then
        -- @todo offline
        logger.error("ccd err", role_data.get_role_id())
        role_account.offline("ccd err")
        return
    end
    if protoName ~= PROTO_MAP[CS_HEART] then
        role_account.update_last_msg_sec(smbb_util.nowsec())
    end
    logger.debugf("%d receive msg %s\n%s", role_data.get_role_id(), protoName, spent(msg))
    local route_service = PROTO_ROUTE[protoName]
    if route_service then
        local roleid = role_data.get_role_id()
        if roleid > 0 then
            skynet.send(route_service, "lua", "dispatch_client_msg", protoName, roleid, msg)
        else
            skynet.error("recv msg but agent not init ok!")
        end
    else
        local modulename = "logic.role." .. PROTO_MODULE[protoName]
        require(modulename)[protoName](msg)
    end
end

skynet.register_protocol {
    name     = "client",
    id       = skynet.PTYPE_CLIENT,
    unpack   = function(msg, sz)
        return smbb_pb.decode(msg, sz)
    end,
    dispatch = function(fd, _, protoName, msg, ccd)
        local state = role_data.get_state()
        assert(fd == state.fd)    -- You can use fd to reply message
        skynet.ignoreret()    -- session is fd, don't call skynet.ret
        --        skynet.trace()
        if protoName then
            -- 预防重入，agent只支持串行操作
            cs(function()
                do_dispatch(protoName, msg, ccd)
            end)
        end
    end
}

local skynet_handle = skynet.handle

skynet_handle.handle_lua_msg = function(_, _, command, ...)
    --skynet.trace()
    local f = agent_lib[command]
    local args = table.pack(...)
    local func = function()
        skynet.retpack(f(table.unpack(args)))
    end
    cs(func)
end

--agent的退出不用sys.EXIT来做，用原生的消息来做，可以保证退出操作也入cs队列，最起码可以确保退出动作前的消息肯定会被处理
skynet_handle.on_exit = function()
end

skynet_handle.info = function(key)
    if key then
        return spent(role_data.get_dataset()[key])
    else
        return spent(role_data.get_dataset())
    end
end

skynet_handle.init = function()
    smbb_util.init_ranom_seed()
    local nowsec = time_wheel.init()
    role_account.start_tick(nowsec)
end

service.init(skynet_handle)
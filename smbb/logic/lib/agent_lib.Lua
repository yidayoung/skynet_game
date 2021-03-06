---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 01. 九月 2018 18:18
---------------------------------------------------------------------
local smbb_util = smbb_util
local logger = logger
local requester = requester
local smbb_misc = smbb_misc
local role_data = role_data
local skynet = require("smbb_skynet")
local role_account = require("logic.role.role_account")
local agent_lib = {}


-- 由gateway_listener直接调用，smbb_game的connect触发
-- 初始化完成后通知smbb_gate开始接收消息
function agent_lib.start(conf)
    smbb_util.init_ranom_seed()
    local fd = conf.client
    local state = role_data.get_state()
    state.gate = conf.gate
    state.watchdog = conf.watchdog
    state.addr = conf.addr
    state.fd = conf.client
    logger.debug("smbb_agent start addr", conf.addr, "gate", conf.gate)
    requester.call(state.gate, "forward", fd)
end

function agent_lib.send_client(protouumber, protodata)
    smbb_misc.send_client(protouumber, protodata)
end

function agent_lib.send_client2(protodata)
    smbb_misc.send_client2(protodata)
end

function agent_lib.route(modulename, funcname, ...)
    return require("logic.role." .. modulename)[funcname](...)
end

function agent_lib.offline()
    local reason = role_account.stop_reason()
    logger.debugf("smbb_agent close, RoleID :%d, Reason:%s", role_data.get_role_id(), reason)
    -- @todo 异常结束的处理应该不需要这些怎么标记是否异常退出
    local currsec = smbb_util.nowsec()
    require("logic.role.role_sync").offline_sync(currsec)
    require("logic.role.role_persist").pereist_all()
end

function agent_lib.disconnect()
    -- todo: do something before exit
    agent_lib.offline()
    skynet.exit()
end

function agent_lib.rest_state(state, ccd_spec)
    role_data.set_state(state)
    role_account.set_ccd_spec(ccd_spec)
end

return agent_lib
---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--      跨服消息处理模块
-- @end
-- Created : 28. 七月 2018 18:14
---------------------------------------------------------------------
--@doc call接口可能会造成阻塞，因为网络断开或者其他异常的原因，劲量避免用call
--send 接口虽然不会阻塞，但是没法能确保消息被投递到目标地址，只能说明投递成功，但是这是最推荐的做法
--将一个长流程的操作拆分成数个小的异步操作，虽然可能会需要处理状态回溯，但是步骤内的内容相对独立，编写的时候清晰

--跨服服务的名字一般通过"MASTER_SERVICE"宏定义框定，而跨服节点的名字写在config中用master_node指定，如果不指定就默认为“master”
--玩法中可以自已包装一个module.send_master =>  send_master(MASTER_SERVICE.module, ...)
--跨服的链接不需要玩法来关注，如果玩法启动的时候跨服消息初始化失败，则需要hook一个任务等待后续恢复后重新初始化
local smbb_cross = {}
local requester = require "lualib.requester"
local loggger = require("lualib.logger")
local skynet = require("smbb_skynet")

local master_node = skynet.getenv("master_node") or "master"

function smbb_cross.call_master(service, cmd, ...)
    local errcode, ret = requester.rpc_call(master_node, service, cmd, ...)
    if ret == RPC_ERROR.success then
        return errcode,ret
    else
        loggger.errorf("call_master faiure reason:%s,service:%s,cmd:%s",errmsg(errcode),tostring(service),cmd)
        return errcode
    end
end

function smbb_cross.send_master(service, cmd, ...)
    local errcode = requester.rpc_send(master_node, service, cmd, ...)
    if ret ~= RPC_ERROR.success then
        loggger.errorf("send_master faiure reason:%s,service:%s,cmd:%s",errmsg(errcode),tostring(service),cmd)
    end
    return errcode
end


return smbb_cross
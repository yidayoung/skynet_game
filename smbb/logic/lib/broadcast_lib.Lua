---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 31. 八月 2018 14:39
---------------------------------------------------------------------
local requester = require "lualib.requester"

local broadcast_lib = {}

---send_all 给所有在线玩家发送一条proto消息
---如果调用的双参版本，则broadacast_service会将这个消息打包
---如果调用的单参版本则调用者必须将消息打包后才能调用
---@param protonumber number
---@param protodata table
function broadcast_lib.send_all(protonumber, protodata)
    if protodata then
        requester.send(SERVICE.broadcast_service, "send_all", protodata, protonumber)
    else
        local package = protonumber
        requester.send(SERVICE.broadcast_service, "send_all", package)
    end
end


return broadcast_lib
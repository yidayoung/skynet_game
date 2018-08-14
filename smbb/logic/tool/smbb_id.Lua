---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 09. 七月 2018 13:47
---------------------------------------------------------------------
local skynet = require "smbb_skynet"
local smbb_id = {}

smbb_id.ROBOTID0 = 0
smbb_id.ROBOT_NUMBER = 9999

local CAPACITY = 10000000000
local setting
local ServerID
skynet.init(function()
    setting = require("config.setting.setting")
    ServerID = setting.server_id
end)

function smbb_id.gen_roleid()
    return skynet.call(SERVICE.id_service, "lua", "gen_id", "gen_roleid")
end

function smbb_id.gen_mailid()
    return skynet.call(SERVICE.id_service, "lua", "gen_id", "gen_mailid")
end

function smbb_id.robotid0()
    return smbb_id.ROBOTID0
end

function smbb_id.robotnum()
    return smbb_id.ROBOT_NUMBER
end

function smbb_id.accid(RAccID)
    return RAccID % CAPACITY
end

function smbb_id.raccid(AccID)
    return ((1 + ServerID) * CAPACITY) + AccID
end

return smbb_id
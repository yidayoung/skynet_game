---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 25. 七月 2018 14:56
---------------------------------------------------------------------

local skynet = require "smbb_skynet"
local sys = require("lualib.sys")
require("logic.define.service_define")
sys.REG(skynet)


skynet.start(function()
    print("stop server start")
    sys.EXIT(SERVICE.web_service)
    sys.EXIT(SERVICE.gate_service)
    sys.EXIT(SERVICE.world_service)
    --sys.EXIT(SERVICE.mail_service)
    --sys.EXIT(SERVICE.id_service)
    sys.EXIT(SERVICE.db_service)
    sys.EXIT(SERVICE.config_service)
    print("stop_server done!")
    skynet.exit()
end)

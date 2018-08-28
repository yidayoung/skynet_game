---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--     项目二次包装后的基础服务，包含了常用的宏定义和config_lib的处理
-- @end
-- Created : 24. 八月 2018 12:00
---------------------------------------------------------------------
local serivce = require("lualib.base_service")


local function preload()
    --@todo 最后整合到一个lua里一起处理
    require "logic.define.service_define"
    require "logic.define.proto_route"
    require "logic.define.database_define"
    require "logic.define.record"
    require "logic.define.proto_define"
    require "logic.define.config_define"
    require "logic.define.error_code"
    require "logic.define.money_define"
    require "logic.define.common"
    require "logic.define.behavior_define"
    local config_lib = require("logic.lib.config_lib")
    old_require = require
    require = function(file)
        local names = string.split(file, ".")
        if names[1] == "config" then
            return config_lib.get_res(file)
        else
            return old_require(file)
        end
    end
end
preload()

return serivce
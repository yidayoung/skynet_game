local skynet = require "skynet"
require("skynet.manager")

skynet.start(function()
	skynet.error("Server start")
	--skynet.uniqueservice("protoloader")
	if not skynet.getenv "daemon" then
		local console = skynet.uniqueservice("console")
	end
	skynet.uniqueservice("debug_console",8000)
    skynet.monitor("simplemonitor")
    -- 启动一些必然需要的基础服务，不依赖其他require时的调用，免得造成内联启动
    skynet.uniqueservice("sharedatad")
    skynet.uniqueservice("clusterd")
    skynet.uniqueservice("loggerd")

    local config_service = skynet.uniqueservice("config_share")
    skynet.call(config_service, "lua", "start")

    local db_service = skynet.uniqueservice("db_service")
    skynet.call(db_service, "lua", "start")

    local world_server = skynet.uniqueservice("world_service")
    skynet.call(world_server, "lua", "start")

    local gateserver = skynet.uniqueservice("gateway_watchdog")
    skynet.call(gateserver, "lua", "start")

    skynet.uniqueservice("web_service")
    skynet.uniqueservice("cross_monitor")
--    skynet.newservice("smbb_fight")
	skynet.exit()
end)

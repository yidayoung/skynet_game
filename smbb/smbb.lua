local skynet = require "skynet"

skynet.start(function()
	skynet.error("Server start")
	--skynet.uniqueservice("protoloader")
	if not skynet.getenv "daemon" then
		local console = skynet.uniqueservice("console")
	end
	skynet.uniqueservice("debug_console",8000)

    -- 启动一些必然需要的基础服务，不依赖其他require时的调用，免得造成内联启动
    skynet.uniqueservice("sharedatad")
    skynet.uniqueservice("clusterd")
    skynet.uniqueservice("loggerd")

    skynet.uniqueservice("config_share")

    local db_service = skynet.uniqueservice("db_service")
    skynet.call(db_service, "lua", "start")

    local world_server = skynet.uniqueservice("world_service")
    skynet.call(world_server, "lua", "start")

    local gateserver = skynet.uniqueservice("gateway_watchdog")
    skynet.call(gateserver, "lua", "start")

    skynet.uniqueservice("web_service")
--    skynet.newservice("smbb_fight")
	skynet.exit()
end)

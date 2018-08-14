-- module proto as examples/proto.lua
local skynet = require "skynet"
local protobuf = require "protobuf"

skynet.start(function()
    --protobuf.register_file("smbb/proto/smbb.pb")
	-- don't call skynet.exit() , because sproto.core may unload and the global slot become invalid
end)

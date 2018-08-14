---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 18. 七月 2018 16:19
---------------------------------------------------------------------

local web_util = {}

local httpd = require("http.httpd")
local sockethelper = require "http.sockethelper"

function web_util.reply_ok (id, reply)
    httpd.write_response(sockethelper.writefunc(id), 200, reply)
end

return web_util


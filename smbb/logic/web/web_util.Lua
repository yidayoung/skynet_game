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
local setting = require("config.setting.setting")
local md5 = require("md5")

function web_util.reply_ok (id, reply)
    httpd.write_response(sockethelper.writefunc(id), 200, reply)
end

function web_util.check_auth(pass, message)
    local key = setting.ctrl_key
    return pass == md5.sumhexa(key .. message)
end

return web_util


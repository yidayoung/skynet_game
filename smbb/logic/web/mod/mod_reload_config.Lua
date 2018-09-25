---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 21. 九月 2018 18:17
---------------------------------------------------------------------
local mod_reload_config = {}
local skynet = require("smbb_skynet")
require("logic.define.service_define")
local codecache = require "skynet.codecache"
local web_util = require("logic.web.web_util")
local json = require("lualib.json")
local requester = require("lualib.requester")

local function trans_msg(body)
    print("body.message:", body.message)
    local message = json.decode(body.message)
    local config_list = message.config_list
    return true, config_list
end


local function prase_req(body)
    if web_util.check_auth(body.pass, body.message) then
        return trans_msg(body)
    else
        return false
    end
end

function mod_reload_config.handle(id, host, path, query, body)
    local result, config_list = prase_req(body)
    if result then
        codecache.clear()
        local ret = requester.call(SERVICE.config_service, "reload", config_list)
        web_util.reply_ok(id, json.encode({ result = ret }))
    else
        web_util.reply_ok(id, json.encode({ result = "fail, args err" }))
    end
end

return mod_reload_config
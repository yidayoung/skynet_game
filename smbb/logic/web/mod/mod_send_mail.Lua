---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 17. 七月 2018 16:19
---------------------------------------------------------------------
local mod_send_mail = {}

local json = require("lualib.json")

local smbb_mongo = require("logic.db.smbb_mongo")
local smbb_id = require("logic.tool.smbb_id")
local web_util = require "logic.web.web_util"
local smbb_misc = require("logic.tool.smbb_misc")


local function jmoney_to_cmoney(jmoney)
    return { tonumber(jmoney.typeid), tonumber(jmoney.number) }
end

local function jreward_to_creward(reward)
    table.map(reward.moneylist, jmoney_to_cmoney)
    return reward.moneylist
end

local function select_all()
    local find_result = smbb_mongo.find(DATABASE_TABLES.role_info, { roleid = { ["$gt"] = smbb_id.robotnum() } }, { roleid = 1 })
    table.map(find_result, function(t)
        return t.roleid
    end)
    return find_result
end

local function select_online()
    return smbb_misc.onlines()
end

local function select_limit(limit)
    return {}
end

local function select(target)
    if target == "all_role" then
        return select_all()
    elseif target == "online_role" then
        return select_online()
    elseif target == "limit" then
        return select_limit(target.args)
    elseif target == "list_role" then
        return target.args
    end
end

local function trans_msg(query)
    local message = json.decode(query.message)
    local target = select(message.target.type)
    return true, target, message.subtype, message.title, message.content, jreward_to_creward(message.reward)
end

local function prase_req(query)
    if web_util.check_auth(query.pass, query.message) then
        return trans_msg(query)
    else
        return false
    end
end

local function send_mail(target, subtype, title, content, reward)
    require("logic.lib.mail_lib").send_notemp_mail(target, subtype, title, content, reward)
end

function mod_send_mail.handle(id, host, path, query, body)
    local result, target, subtype, title, content, reward = prase_req(body)
    if result then
        send_mail(target, subtype, title, content, reward)
        web_util.reply_ok(id, json.encode({ result = "succ" }))
    else
        web_util.reply_ok(id, json.encode({ result = "fail" }))
    end
end

return mod_send_mail
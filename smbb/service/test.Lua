---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 11. 七月 2018 20:40
---------------------------------------------------------------------

local skynet = require "skynet"
require("skynet.manager")
config_lib = require("logic.lib.config_lib")
local logger = require("lualib.logger")
require("logic.tool.smbb_misc")
require("logic.db.smbb_mongo")
require("logic.lib.reward_lib")
require("logic.db.smbb_mongo")
smbb_id = require("logic.tool.smbb_id")
smbb_util = require("logic.tool.smbb_util")
require "logic.define.service_define"
require "logic.define.proto_route"
require "logic.define.database_define"
require "logic.define.record"
require "logic.define.proto_define"
require "logic.define.config_define"
require "logic.define.error_code"
require "logic.define.money_define"
require "logic.define.common"
requester = require("lualib.requester")
--local role_money = require("logic.role.role_money")
local lz = require("zlib")

local CMD = {}

local role_lib = require("logic.lib.role_lib")


function CMD.test()
    local shard = skynet.uniqueservice "sharedatad"
    spent_print("shard:", skynet.address(shard))
    local sharedata = require "skynet.sharedata"
end

skynet.start(function()
    --skynet.register("test")
    --spent_print("reward:", reward_lib.merge({ { 1011, 10 }, { 1012, 20 } }, { { 1011, 10 } }, { { 1011, 10 } }, { { 1011, 10 } }))
    --local result = smbb_mongo.delete(DATABASE_TABLES.mail_info, { mail_id = { ["$in"] = { 20000000042, 20000000043 } } })
    --local result = smbb_mongo.delete(DATABASE_TABLES.mail_info, { mail_id =  20000000042})
    --spent_print("result :", result)
    require("logic.lib.mail_lib").send_notemp_mail({20000000001}, 1, "123", "456", { { 2, 10 }, { 7, 20 } })
    --smbb_mongo.update(DATABASE_TABLES.mail_info, { mailid = { ["$in"] = {20000000001} } }, {["$set"]= {drawed = 0}})
    --local result = smbb_mongo.find(DATABASE_TABLES.role_info, {roleid={["$gt"]=smbb_id.robotnum()}}, {roleid=1})
    --spent_print("result:",result)
    --skynet.timeout(300, function () spent_print("data_money",config_lib.get_res(CONFIG.data_money)) end)

    --local result = smbb_mongo.get(DATABASE_TABLES.money_info, 20000000001)
    --spent_print("result:",result)
    --local tbl = {a=1,b={c=3,d=4,f="add"}}
    --local tbl = smbb_util.table_to_string ({a="123",b={[2]="456"}})
    ----local tbl = "{['a']='123',['b']={[2]='456'}}"
    ----local tbl = "abc"
    --local bson = require("bson")
    --
    --local compressed_data = smbb_util.compress({a="123"})
    --spent_print("compressed_data:",compressed_data)
    --spent_print("compressed_data:",#compressed_data)
    --spent_print("compressed_data:",#bson.binary(compressed_data))
    --
    --b = bson.encode {
    --    d = { 1,2,3,4 },
    --    e = bson.binary(compressed_data),
    --
    --}
    --
    --print "\n[before replace]"
    --t = b:decode()
    --
    --for k, v in pairs(t) do
    --    print(k,(v),#tostring(v))
    --end
    ----local len = #b.e
    --
    --local type,result = bson.type(t.e)
    --
    --spent_print("result:",result)
    --spent_print("type:",type)
    --spent_print("result:",smbb_util.uncompress_retrun_table(result))
    ----
    --local compressed_data = smbb_util.compress({a="123"})
    --spent_print("compressed_data:",compressed_data)
    ----
    --local bsoned = bson.encode({val=(compressed_data),a="abc"})
    --spent_print("bsoned:",bsoned)
    --local unbsoned = require("bson").decode(bsoned)
    --spent_print("bson encode:",smbb_util.string_to_table(unbsoned.val))
    --print("compressed_data ==unbsoned ",compressed_data==unbsoned.val)
    --spent_print("tbl",tbl)
    --local data = smbb_util.compress(tbl)
    --spent_print("data:",data)
    --spent_print("tbl",smbb_util.uncompress_retrun_table(smbb_util.compress(tbl)))
    --local money_info = smbb_mongo.get(DATABASE_TABLES.money_info, 20000000001)
    --spent_print("money_info",money_info)
    --money_info = role_money.fulsh_from_db(money_info)
    --spent_print("money_info",money_info)

    --spent_print("version:",lz.version())

    --skynet.exit()
    --spent_print("role_public",role_lib.get_role_public(20000000001))

    --local role_info = RECORD.role_info_t()
    --role_info.roleid = 1
    --spent_print("roleinfo:",role_info)
end)
require("logic.tool.smbb_misc")
--local role_lib = require("logic.lib.role_lib")
skynet.info_func(function (modulename, funcname, ...)
    return require(modulename)[funcname](...)
end)
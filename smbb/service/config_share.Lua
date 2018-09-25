---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 11. 七月 2018 18:08
---------------------------------------------------------------------
-- configh_share比较特殊
-- 因为smbb_service 会初始化config_lib，而config_lib的初始化必须依赖config_share启动完成，所以这里只调用基础版本
-- 也就是依赖的宏定义必须自己主动的require
local require = require
local service = require("lualib.base_service")
local skynet = require "smbb_skynet"
local sharedata = require "skynet.sharedata"
require("logic.define.service_define")
require("logic.define.config_define")
local last_config = {}

local function load_one_config(config_name, configh_path)
    if CONFIG[config_name] or SETTING[config_name] then
        local temdata = require(configh_path)
        print("setting", temdata.is_release)
        last_config[config_name] = temdata
        --if last_config[config_name] then
        --    sharedata.update(config_name, temdata)
        --else
        --    sharedata.new(config_name, temdata)
        --    last_config[config_name] = true
        --end
        package.loaded[configh_path] = nil
    else
        print("load unkonw config:", config_name)
    end
end

local function load_all_config()
    for _, v in pairs(CONFIG) do
        load_one_config(v, "config." .. v)
    end
end

local function load_setting()
    for _, v in pairs(SETTING) do
        load_one_config(v, "config.setting." .. v)
    end
end

local function sharedata_init()
    sharedata.new("config", last_config)
end

local function sharedata_reload(config_name)
    sharedata.update("config", last_config, config_name)
end

local function reload_config(config_name)
    if config_name then
        if CONFIG[config_name] then
            load_one_config(config_name, "config." .. config_name)
        elseif SETTING[config_name] then
            load_setting()
        else
            return ("unkonw config " .. config_name)
        end
        sharedata_reload(config_name)
    else
        load_all_config()
        sharedata_reload()
    end
    return "success " .. config_name
end

local CMD = {}

function CMD.reload(config)
    print("reload config", config)
    local ret = {}
    if type(config) == "string" then
        table.insert(ret, reload_config(config))
    elseif type(config) == "table" then
        ret = {}
        for _, config_name in ipairs(config) do
            table.insert(ret, reload_config(config_name))
        end
    else
        ret = {"config str err"}
    end
    return ret
end

function CMD.start()
    load_setting()
    load_all_config()
    sharedata_init()
end

local skynet_handle = skynet.handle

skynet_handle.init = function()
end

skynet_handle.on_exit = function()
    --local shardata_service = skynet.uniqueservice "sharedatad"
    --skynet.kill(shardata_service)
end

skynet_handle.command = CMD
require("logic.define.service_define")
skynet_handle.register = SERVICE.config_service

skynet_handle.info = function()
    return last_config
end

service.init(skynet_handle)
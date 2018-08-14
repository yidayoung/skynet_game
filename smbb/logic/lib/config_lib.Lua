---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 14. 七月 2018 18:22
---------------------------------------------------------------------
local sharedata = require "skynet.sharedata"
local skynet =require("smbb_skynet")
local config_lib = {}

local config_cache = {}

local function init()
    for _, config_name in pairs(CONFIG) do
        if not config_cache[config_name] then
            config_cache[config_name] = sharedata.query(config_name)
        end
    end
    for _, config_name in pairs(SETTING) do
        if not config_cache[config_name] then
            config_cache[config_name] = sharedata.query(config_name)
        end
    end
end

local function get(config_name)
    assert(config_cache[config_name], string.format("should create sharedata object<%s> before query", config_name))
    return config_cache[config_name]
end

local res_getter = {}

function config_lib.get_res(config_name)
    local names = string.split(config_name, ".")
    config_name = names[#names]
    local resources
    if res_getter[config_name] then
        return res_getter[config_name]
    end
    local getter = setmetatable(
            {},
            {
                __newindex = function(t, k, v)
                    assert(false)
                end,
                __index = function(t, k)
                    if not resources then
                        resources = get(config_name)
                    end
                    return resources[k]
                end,
                __pairs = function(t)
                    if not resources then
                        resources = get(config_name)
                    end
                    return pairs(resources)
                end,
            }
    )
    res_getter[config_name] = getter
    return getter
end

function config_lib.reload(config_name)
    skynet.send(SERVICE.config_service, "lua", "reload", config_name)
end

skynet.init(function()
    init()
end)

return config_lib
---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 27. 七月 2018 20:31
---------------------------------------------------------------------
local skynet = require "skynet"
local service = require "lualib.smbb_sevice"
local logger = require "lualib.logger"
local httpd = require "http.httpd"
local sockethelper = require "http.sockethelper"
local socket = require "skynet.socket"
local urllib = require "http.url"
local table = table
local string = string
local data_route

local function response(id, ...)
    local ok, err = httpd.write_response(sockethelper.writefunc(id), ...)
    if not ok then
        -- if err == sockethelper.socket_error , that means socket closed.
        skynet.error(string.format("fd = %d, %s", id, err))
    end
end

local skynet_handle = skynet.handle

-- 调用skynet.init
skynet_handle.init = function()
    data_route = require("config.data_route")
end

-- 服务关闭时的回调函数
skynet_handle.on_exit = function()
    logger.info(SERVICE_NAME .. "stop")
end

--handle_lua_msg和command参数互相冲突，如果有handle_lua_msg则command不会生效
skynet_handle.handle_lua_msg = function(_, source, id, ...)
    socket.start(id)  -- 开始接收一个 socket
    -- limit request body size to 8192 (you can pass nil to unlimit)
    -- 一般的业务不需要处理大量上行数据，为了防止攻击，做了一个 8K 限制。这个限制可以去掉。
    local code, url, method, header, body = httpd.read_request(sockethelper.readfunc(id), 8192)
    if code then
        if code ~= 200 then
            -- 如果协议解析有问题，就回应一个错误码 code 。
            response(id, code)
        else
            -- 这是一个示范的回应过程，你可以根据你的实际需要，解析 url, method 和 header 做出回应。
            local tmp = {}
            if header.host then
                table.insert(tmp, string.format("host: %s", header.host))
            end
            local path, query = urllib.parse(url)
            table.insert(tmp, string.format("path: %s", path))
            if query then
                local q = urllib.parse_query(query)
                for k, v in pairs(q) do
                    table.insert(tmp, string.format("query: %s= %s", k, v))
                end
            end
            path = string.sub(path,2)
            local module = data_route[method][path]
            require("logic.web.mod."..module).handle(id, header.host, path, query, urllib.parse_query(body))
        end
    else
        -- 如果抛出的异常是 sockethelper.socket_error 表示是客户端网络断开了。
        if url == sockethelper.socket_error then
            skynet.error("socket closed")
        else
            skynet.error(url)
        end
    end
    socket.close(id)
end

--skynet_handle.command = server_func


skynet_handle.info = function()
    return
end

service.init(skynet_handle)
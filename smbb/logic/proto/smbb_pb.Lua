---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 12. 七月 2018 11:35
---------------------------------------------------------------------
local protobuf = require "protobuf"
local smbb_proto = require("skymoons.proto")
local skynet = require("smbb_skynet")
--require("logic.tool.smbb_misc")
local logger = require("lualib.logger")
local smbb_util = smbb_util
local string = string

local smbb_pb = {}

function smbb_pb.decode(msg, sz)
    local is_compress, left = smbb_proto.iscompress(msg, sz)
    --local is_compress, ccd, protonumber, protodata = smbb_proto.decode(msg, sz)
    if is_compress == 1 then
        left = smbb_util.uncompress(left)
    end
    local ccd, protonumber, protodata = smbb_proto.decode(left)
    local protoName = PROTO_MAP[protonumber]
    assert(protoName~=nil, "protoNumber not found"..protonumber)
    protodata = protobuf.decode(protoName, protodata)
    return protoName, protodata, ccd
end

function smbb_pb.encode(protonumber, protodata)
    local protoname = PROTO_MAP[protonumber]
    local is_compress = 0
    if protoname then
        local package = protobuf.encode(protoname, protodata)
        local CCD = 0
        package = string.pack(">I2", CCD)
                .. string.pack(">I2", protonumber)
                .. package
        if #package > 1024 then
            package = smbb_util.compress(package)
            --@todo 压缩后还超长的处理
            is_compress = 1
        end
        package = string.pack(">I2", #package + 3)
                .. string.pack(">I1", is_compress)
                .. package
        return package
    else
        skynet.err(string.format("proto_encode err protonumber = %s protodata = %s", protonumber, spent(protodata)))
    end
end

return smbb_pb
#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Author: song
# 2016年8月9日
#

import os, sys, re, codecs, shutil, hashlib, platform
import os.path
import zipfile

os.chdir(sys.path[0])

g_in = sys.argv[1]
g_out = sys.argv[2]

# 输出路径
if os.path.exists(g_out):
    shutil.rmtree(g_out)
os.makedirs(g_out)


def genPBFieldTip(inFilePath):
    # print("-----gen lua tip "+inFilePath)
    protoOrg = codecs.open(g_in+inFilePath, "r", encoding="utf-8")
    line = protoOrg.readline()
    outstr = ""
    state = "init"
    while line:
        # print(line)
        if state == "init":
            m = re.match("message\s*(\w+)\s*\{\s*(.*)", line)
            if m:
                # print(m.group(1))
                outstr = outstr + "\n---@class " + m.group(1)
                comment = re.sub(r'^\s*//\s*', '', m.group(2)).strip()
                if comment != "":
                    outstr = outstr + " @" + comment  # msg注释
                state = "inclass"
        elif state == "inclass":
            # print("inclas", line)
            if line[0] == "}":
                # print("finished")
                break
            else:
                # m=re.match("\s*(\w+)\s*(\w+)\s*(\w+)\s*=.*?((//.*)?)",line)
                m = re.match("\s*(\w+)\s*(\w+)\s*(\w+)\s*=\s*\d+;(.*)", line)
                if m:
                    prefix = m.group(1)
                    type = m.group(2)
                    name = m.group(3)
                    comment = m.group(4).strip()

                    if len(comment) > 2:
                        comment = " @" + comment[2:]
                    # print(prefix, type, name, comment)
                    if prefix == "repeated":
                        outstr = outstr + "\n---@field " + name + " " + type + "[]" + comment
                    else:
                        outstr = outstr + "\n---@field " + name + " " + type + comment

        line = protoOrg.readline()
        pass
    outstr = outstr + "\nlocal m={}"
    # print(outstr)

    path = os.path.splitext(inFilePath)[0]
    parts = path.split('/')
    name = parts[len(parts) - 1] + "__tip.lua"

    protoDst = codecs.open(g_out + name, "w", encoding="utf-8")
    protoDst.write(outstr)
    protoDst.close()


cstipStr = "cs = {}"


def genCSTip(inFilePath):
    global cstipStr
    cstipStr += "\n"
    protoOrg = codecs.open(g_in+inFilePath, "r", encoding="utf-8")
    str = protoOrg.read()
    # print(str)
    matches = re.findall('message\s+(\w+)\s*{([^\r\n]*)', str)
    funcname = matches[0][0]
    funccomment = matches[0][1]
    funccomment.strip().replace
    funccomment = re.sub(r'^\s*//\s*', '', funccomment).strip()
    # print (funcname, funccomment)
    if funccomment != "":
        cstipStr = cstipStr + unicode("\n---{}").format(funccomment)  # 生成注释
    # print(funcname)

    matches = re.findall('(optional|required|repeated)\s+(\w+)\s+(\w+).*//(.*)', str)
    param = ""
    for each in matches:
        type = each[0] == "repeated" and each[1] + "[]" or each[1]
        name = each[2]
        comment = each[3]
        # print(type, name, comment)
        fld = unicode("\n---@param {} {} @{}").format(name, type, comment)
        # print(fld)
        cstipStr = cstipStr + fld
        if param == "":
            param = name
        else:
            param = param + ", " + name
    # print(param)
    signature = unicode("\nfunction cs.{}({}) end").format(funcname, param)
    cstipStr = cstipStr + signature


sctipStr = "sc = {}"


def genSCTip(inFilePath):
    global sctipStr
    sctipStr += "\n"
    protoOrg = codecs.open(g_in+inFilePath, "r", encoding="utf-8")
    str = protoOrg.read()
    # print(str)
    matches = re.findall('message\s+(\w+)\s*{([^\r\n]*)', str)
    funcname = matches[0][0]
    funccomment = matches[0][1]
    funccomment.strip().replace
    funccomment = re.sub(r'^\s*//\s*', '', funccomment).strip()
    # print (funcname, funccomment)
    if funccomment != "":
        sctipStr = sctipStr + unicode("\n---{}").format(funccomment)  # 生成注释
    # print(funcname)

    matches = re.findall('(optional|required|repeated)\s+(\w+)\s+(\w+).*//(.*)', str)
    param = ""
    for each in matches:
        type = each[0] == "repeated" and each[1] + "[]" or each[1]
        name = each[2]
        comment = each[3]
        # print(type, name, comment)
        fld = unicode("\n---@param {} {} @{}").format(name, type, comment)
        # print(fld)
        sctipStr = sctipStr + fld
        if param == "":
            param = name
        else:
            param = param + ", " + name
    # print(param)
    signature = unicode("\nfunction sc.{}({}) end").format(funcname, param)
    sctipStr = sctipStr + signature


print("-------------gen pb lua tip")
files = os.listdir(g_in)  # 列出目录下的所有文件和目录
for file in files:
    if file[-6:] == ".proto":
        genPBFieldTip(file)
        if file[:3] == "cs_":
            genCSTip(file)
        if file[:3] == "sc_":
            genSCTip(file)

print("------")
# print(cstipStr)
protoDst = codecs.open(g_out + "proto_cs_lua_tip.lua", "w", encoding="utf-8")
protoDst.write(cstipStr)
protoDst.close()
# genPBFieldTip("/Users/songtianming/Documents/dev/SLZJProj/trunk/protobuf/client/p_money.proto")
protoDst = codecs.open(g_out + "proto_sc_lua_tip.lua", "w", encoding="utf-8")
protoDst.write(sctipStr)
protoDst.close()

# shutil.make_archive("../pb_lua_tip", 'zip', g_out)
# deterministic zip
# files = os.listdir(g_out)  # 列出目录下的所有文件和目录
# zipHanle = zipfile.ZipFile("../pb_lua_tip.zip", 'w', zipfile.ZIP_DEFLATED)
# for file in files:
#     # print(file)
#     zi = zipfile.ZipInfo(file, (2011, 11, 11, 11, 11, 11))
#     zi.compress_type = zipfile.ZIP_DEFLATED
#     bytesFile = open(g_out + file, "rb+")
#     zipHanle.writestr(zi, bytesFile.read())
#     bytesFile.close()
#
# zipHanle.close()

print("-------------end gen pb lua tip")

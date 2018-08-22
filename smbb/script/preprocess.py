# -*- coding: utf-8 -*-
import codecs, os, sys, re, shutil, hashlib

root_dir = "../logic/proto/"
os.chdir(os.path.join(sys.path[0], root_dir))
protodir, serverdir, clientdir = './', './server', './client'
# fout_protofmt = codecs.open('./proto_fmt', 'w', encoding='utf-8')
# fout_pairlist = codecs.open('./proto_map', 'w', encoding='utf-8')
if not os.path.exists(serverdir):
    os.makedirs(serverdir)

if os.path.exists(clientdir):
    shutil.rmtree(clientdir)
os.makedirs(clientdir)

msglist, message = [], None
for name in os.listdir(protodir):
    (pre, ext) = os.path.splitext(name)
    if ext != '.proto': continue
    f = codecs.open(name, 'r', encoding='utf-8')
    for line in f.readlines():
        complete_line = line
        line = re.sub(r'//.*$', '', line).strip()
        if not line: continue
        rest = re.sub(r'^message\s+', '', line)
        if rest == line:
            message['body'].append(complete_line)
            rest = re.sub(r'^(required|repeated|optional)\s+', '', rest)
            match_result = re.search(r'^\w+', rest)
            if not match_result: continue
            field = match_result.group(0)
            # noinspection PyInterpreter
            if field in ['int32', 'int64', 'uint32', 'uint64', \
                         'sint32', 'sint64', 'string', 'bytes', 'double', \
                         'float', 'fixed32', 'fixed64', 'sfixed32', 'sfixed64', \
                         'bool']: continue
            message['deps'].add(field)
            continue
        message = {}
        message['body'] = []
        message['deps'] = set([])
        message['num'] = None
        message['str'] = None
        match_result = re.search(r'^\w+', rest)
        msgstr = match_result.group(0)
        message['str'] = match_result.group(0)
        if rest[-1] == '{':
            message['body'].append('message ' + message['str'] + ' {')
        else:
            message['body'].append('message ' + message['str'])
        rest = re.sub(r'^.*id\s*=\s*', '', rest)
        match_result = re.search(r'^\d+', rest)
        message['num'] = (match_result.group(0))
        msglist.append(message)

msgnum_set, msgstr_set, pair_list = set([]), set([]), []
for message in msglist:
    if message['num'] in msgnum_set:
        print('msgnum %d duplicated', message['num'])
        sys.exit()
    if message['str'] in msgstr_set:
        print('msgstr %s duplicated', message['str'])
        sys.exit()
    msgnum_set.add(message['num'])
    msgstr_set.add(message['str'])
    pair = (message['num'], message['str'])
    pair_list.append(pair)

with codecs.open(serverdir + '/smbb.proto.tmp', 'w', encoding='utf-8') as f:
    head = 'syntax = "proto2";\n'
    f.write(head)
    for message in msglist:
        for line in message['body']:
            line = re.sub(r'=', ' = ', line)
            line = re.sub(r'\s+', ' ', line)
            if '=' in line: line = '    ' + line
            f.write(line + '\n')
        f.write('\n')


def get_file_md5(f):
    m = hashlib.md5()
    while True:
        data = f.read(1024)  # 将文件分块读取
        if not data:
            break
        m.update(data)
    return m.hexdigest()


# compare old, if same do return
if os.path.exists(serverdir + '/smbb.proto'):
    old_proto = open(serverdir + '/smbb.proto', 'rb')
    new_proto = open(serverdir + '/smbb.proto.tmp', 'rb')
    if get_file_md5(old_proto) == get_file_md5(new_proto):
        print("new smbb.proto is same with old, if want force process, del old smbb.proto")
        sys.exit(0)
    old_proto.close(), new_proto.close()
    os.remove(serverdir + '/smbb.proto')
for name in os.listdir(serverdir):
    if name != 'smbb.proto.tmp':
        os.remove(serverdir + '/' + name)
os.rename(serverdir + '/smbb.proto.tmp', serverdir + '/smbb.proto')

for name in os.listdir(clientdir):
    (pre, ext) = os.path.splitext(name)
    if ext == '.proto':
        os.remove(clientdir + '/' + name)

for message in msglist:
    with codecs.open(clientdir + '/' + message['str'] + '.proto', 'w', encoding='utf-8') as f:
        for deps in message['deps']:
            f.write('import "' + deps + '.proto";\n')
        f.write('\n')
        for line in message['body']:
            line = re.sub(r'=', ' = ', line)
            line = re.sub(r'\s+', ' ', line)
            if '=' in line: line = '    ' + line
            f.write(line + '\n')
        f.write('\n')

with codecs.open(clientdir + '/proto_define.lua', 'w', encoding='utf-8') as f:
    header = '''
----------------
--auto gen proto map file
----------------
PROTO_MAP = {}
'''
    protoTem = '''
${protoCap} = ${num}
PROTO_MAP[${protoCap}] = "${protoLow}"
'''
    f.write(header)
    for pair in sorted(pair_list):
        num, msg = pair
        if msg[:3] == "cs_" or msg[:3] == "sc_":
            str = protoTem.replace("${protoCap}", msg.upper())
            str = str.replace("${protoLow}", msg.lower())
            str = str.replace("${num}", num)
            f.write(str)

os.chdir(sys.path[0])
os.system("python gen_luatip.py ../logic/proto/client/ ../logic/proto/_luatip_/")
os.system("protoc --descriptor_set_out ../proto/smbb.pb -I ../logic/proto/server/ smbb.proto")
os.chdir(os.path.join(sys.path[0], root_dir))
# shutil.rmtree(serverdir)
shutil.rmtree(clientdir)

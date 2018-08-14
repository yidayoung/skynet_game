---@class setting
local config = {
    -- 服务器登陆监听端口
    game_port = 8888,
    -- 服务器逻辑ID
    server_id = 1,
    -- 已合并服务器列表
    merge_server_id_list = {},
    -- 服务器归属平台
    platform = "smbbapp",
    -- 服务器类型
    server_type = "normal",
    -- 开服时间
    server_open_time = { { 2017, 3, 8 }, { 10, 0, 0 } },
    -- 是否发布版
    is_release = false,
    -- 最大在线数量限制
    max_online_num = 8000,
    -- 最大注册用户数量
    max_register_num = 50000,
    -- 数据库配置
    mongo_database = {
        host = "10.0.11.22",
        port = 27017,
        --username = "root",
        --password = "test",
        database = "smbb_game10"
    },
    -- 平台服地址和通知端口
    login_addr = "10.10.13.156",
    login_port = 23727,
    -- 连接登陆服密钥
    login_connect_key = "a71&%^$$asSSsjh",
    -- 充值服务器地址
    pay_addr = "10.10.13.156",
    pay_port = 23333,
    -- 充值服密钥
    pay_connect_key = "12345678901234567890123456789012",

    -- 充值回调处理端口
    pay_port = 20001,
    -- 后台控制连接端口
    ctrl_port = 20002,
    -- 后台控制连接密钥
    ctrl_key = "asdfghjkl",

    -- 客户端需求最低版本号
    client_version = {0,0,1},


}

return config
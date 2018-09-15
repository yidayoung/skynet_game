---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 09. 七月 2018 19:55
---------------------------------------------------------------------

-- 名字不能超过16 by GLOBALNAME_LENGTH is 16, defined in skynet_harbor.h
SERVICE = {
    id_service = ".id_service",
    db_service = ".db_service",
    world_service = ".world_service",
    mail_service = ".mail_service",
    config_service = ".config_service",
    web_service = ".web_service",
    gate_service = ".gate_service",
    broadcast_service = '.brocast',
    cross_service = '.cross',
}

MASTER_SERVICE = {

}


SERVER_TYPE_NDINFO_MASTER = "ndinfo_master"
SERVER_TYPE_NORMAL = "normal"
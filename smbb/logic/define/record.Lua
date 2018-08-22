---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--      内存存储或者落盘时定义的表结构
-- @end
-- Created : 09. 七月 2018 14:07
---------------------------------------------------------------------
-- RECORD 相当于一个基础数据模板的宏定义，因为lua没有宏定义，所以只能实现成
-- 每次get值时进行一个拷贝来构造，否则拷贝出去的数据进行了修改会影响模板数据

-- 数据定义时是定义的简单的table结构，后续会将val转成一个return 这个val的copy的函数
-- 所以需要调用的地方需要按照函数的调用方法来调用,比如RECORD.role_info_t() 才能拿到数据

-- 如果需要类型检查，可以调用定义在smbb_util中的is_record(table, RECORD), RECORD字段可以是函数也可以是调用后的值

local table = table
RECORD = {}
---@class role_info
local role_info_t = { _t = "role_info"
,roleid                  = 0                            --- 角色ID
,rolename                = ""                           --- 角色名
,accid                   = 0                            --- 账号ID
,raccid                  = 0                            --- 唯一账号ID
,accname                 = ""                           --- 账号名
,familyid                = 0                            --- 公会ID
,familyname              = ""                           --- 公会名
,icon                    = 0                            --- 头像ID
,frame                   = 0                            --- 头像框
,rolelv                  = 1                            --- 角色等级
,roleexp                 = 0                            --- 角色经验
,viplv                   = 1                            --- VIP等级
,vipexp                  = 0                            --- VIP积分
,atkpower                = 0                            --- 进攻战斗力
,defpower                = 0                            --- 防御战斗力
,lastlogin               = 0                            --- 最近登录时间
,lastlogout              = 0                            --- 最近下线时间
,reg_srctype             = 0                            --- 注册渠道
,srctype                 = 0                            --- 来源渠道
,advtype                 = 0                            --- 广告渠道
,fc_type                 = 0                            --- 财务渠道
,totalpaid               = 0                            --- 累积付费
,ip                      = ""                           --- 注册IP地址
,mac                     = ""                           --- 注册MAC地址
,devid                   = ""                           --- 注册设备ID
,phone_model             = ""                           --- 注册客户端机型
,sys_version             = ""                           --- 注册系统版本号
,regtime                 = 0                            --- 注册时间
,regarea                 = ""                           --- 注册地
,showvip                 = 1                            --- 是否展示vip等级
}
RECORD.role_info_t = role_info_t

---@class role_public
local role_public_t = { _t = "role_public"
,roleid                    = 0                          --- 角色ID
,rolename                  = ""                         --- 角色名
,familyid                  = 0                          --- 公会ID
,familyname                = ""                         --- 公会名
,icon                      = 0                          --- 头像ID
,frame                     = 0                          --- 头像框
,rolelv                    = 1                          --- 角色等级
,viplv                     = 0                          --- VIP等级
,atkpower                  = 0                          --- 进攻战斗力
,defpower                  = 0                          --- 防御战斗力
,lastlogout                = 0                          --- 最近下线时间
}
RECORD.role_public_t = role_public_t

---@doc 邮件结构定义
---@class mail
local mail_t = { _t = "mail"
,mailid             = 0                                 --- 邮件ID
,tempid             = 0                                 --- 模板ID(也是类型ID)
,subtype            = 0                                 --- 子类型(主要用于表现区分)
,title              = ""                                --- 邮件标题
,content            = ""                                --- 邮件内容
,reward             = {}                                --- 附加奖励(无则置空)
,isread             = 0                                 --- 是否已读(0:=未读,1:=已读)
,drawed             = 0                                 --- 是否领取(0:=未领,1:=已领)
,sender             = 0                                 --- 发送者(目前只有0合法，表示系统)
,receiver           = 0                                 --- 接收者(角色ID)
,timestamp          = 0                                 --- 生成时间戳
,autoget            = 1                                 --- 是否能一键读取(0:=不能,1:=能)
}
RECORD.mail_t = mail_t

--- @class mail_info
local mail_info_t = { _t = "mail_info"
,roleid                  = 0                            --- 角色ID
,recv_mid                = 0                            --- 已接收的最小邮件ID
,mails                   = {}                           --- 所有邮件(ID升序排列)
,offline_sec             = -1                           --- 玩家上次离线时间-1为初始值表示未初始化
}
RECORD.mail_info_t = mail_info_t

--- @class rmail_info
local rmail_info_t = { _t = "rmail_info"
,roleid                   = 0                           --- 角色ID
,recv_mid                 = 0                           --- 已接收的最小邮件ID
,unrcvnum                 = 0                           --- 未领取邮件数量
}
RECORD.rmail_info_t = rmail_info_t

--- @class money_info
local money_info_t = { _t = "money_info"
,roleid                   = 0                           --- 角色ID
,moneylist                = {}                          --- 货币列表
}
RECORD.money_info_t = money_info_t

--- @class sign_info
local sign_info_t = { _t = "sign_info"
,roleid                  = 0                            --- 角色ID
,lastrefsec              = 0                            --- 上次签到时间
,signdays                = 0                            --- 累计签到天数
,cur_month_sign          = 0                            --- 当前月份签到天数
,draw_sign_times         = 0                            --- 已经领取的累计签到奖励天数
}
RECORD.sign_info_t = sign_info_t






---@class reward @{{typeid, num}, {typeid, num},....}


table.map(RECORD, function(record)
    return function()
        return copy(record)
    end
end)

table.read_only(RECORD)




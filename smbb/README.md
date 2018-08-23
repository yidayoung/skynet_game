## 代码目录说明

### config

项目配置文件，根据服务器ID不同可能需要不同的配置被单独分离到setting目录里进行管理，其他通用配置放在config目录中

使用方法如下：
```
local data_common = require("config.data_common")
```
require函数实际调用时会被lualib.service中重写
加载config目录的文件时调用的是config_lib.get_res,使用的skynet的sharedata实现，并不是单纯的require

### logic

项目实际玩法逻辑存放目录，一般日常开发只会修改到该目录中的文件，很少需要对其他目录进行改动

* behavior `行为日志记录模块`
* cross `跨服接口`
* db `数据库接口`
* define `“宏定义”`
* lib `服务暴露出的对外接口`
* proto `proto buffer 文件存放目录`
    * server 存放脚本整合后的所有标准proto消息的定义文件smbb.proto
    * _luatip_ 存放用于代码提示的tip文件
    * ... 根据功能编写的非标准protobuffer文件存放目录
* role `存放由agnet处理的proto消息对应的模块`
* tool `通用工具函数`
* web `http接口处理`
* world `服务器常驻的公共服务描述`

### lualib 
扩展的通用lua库，将来会加入到lua_path中
    
### preadload 
每个服务启动时会预加载的模块

### proto 
对应*smbb.proto*编译出的pb文件,用于实际运行时的protobuf消息的处理

### script 
一些维护和代码二次处理的脚本

### service 
逻辑外的基础服务

### ...
* smbb.lua `项目启动的入口，调用定义在smbb_config中，管理服务器启动流程`
* smbb_config `项目基础配置，管理服务器基础配置`
* config.path `smbb_config文件的扩展，管理代码加载目录`
* prealod.lua `管理每个服务启动时需要执行的动作`
* smbb_skynet.lua `对标准skynet的项目性扩展接口`

---@class p_family
---@field familyid uint64 @ 公会ID
---@field familyname string @ 公会名
---@field familylv uint64 @ 公会等级
---@field familycons uint64 @ 公会建设度
---@field techlist p_ftech[] @ 科技列表
---@field techpoints uint64 @ 科技点数
---@field notice string @ 公会公告(对内)
---@field whatup string @ 公会宣言(对外)
---@field create_time uint64 @ 创建时间
---@field chairname string @ 会长名字
---@field active uint64 @ 活跃点数
---@field floglist p_flog[] @ 日志列表
---@field donate_times uint64 @ 已捐献次数
---@field joinneedlv uint64 @ 加入需要的等级
---@field joinneedagree bool @ 加入是否需要审批
---@field rank uint64 @ 公会排行
---@field lastrecruitsec uint64 @ 上次招募的时间点
local m={}
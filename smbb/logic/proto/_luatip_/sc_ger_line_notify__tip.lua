
---@class sc_ger_line_notify
---@field type uint64 @ 更新的是攻击阵容还是防守阵容 1 -> 攻击阵容 2 -> 防守阵容
---@field lineup p_lineup[] @ 最新的阵容，本身也很短，所以全部发送
local m={}
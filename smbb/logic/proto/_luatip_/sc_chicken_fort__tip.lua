
---@class sc_chicken_fort
---@field fort_id uint64 @据点ID
---@field next_ref_sec uint64 @下次结算时间
---@field play_list uint64[] @当前据点中的玩家RoleID列表，具体玩家信息从init消息中取
---@field box_buf p_attr @盒子里的buf
---@field buf_id uint64 @盒子里的bufID
local m={}
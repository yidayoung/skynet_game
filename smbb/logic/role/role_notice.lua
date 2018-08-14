--
-- Created by IntelliJ IDEA.
-- User: user
-- Date: 2018/6/29
-- Time: 13:58
-- To change this template use File | Settings | File Templates.
--
local skynet =require("smbb_skynet")

local role_notice = {}

local data_notice

local function p_notice(notice)
    local pnotice = {
        notice_id = notice.notice_id,
        notice_title = notice.notice_title,
        notice_content = notice.notice_content,
        notice_pic = notice.notice_pic,
        notice_start_time = notice.notice_start_time,
        notice_end_time = notice.notice_end_time,
    }
    return pnotice
end

function role_notice.cs_notice_msg(...)
    local notice_list = {}
    for _, notice in pairs(data_notice) do
        table.insert(notice_list, p_notice(notice))
    end
    smbb_misc.send_client(SC_NOTICE_MSG, { notice_list = notice_list })
end

skynet.init(function()
    data_notice = require("config.data_notice")
end)

return role_notice
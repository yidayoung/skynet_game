---------------------------------------------------------------------
-- @author wangyida
-- @copyright (C) 2018, <SKYMOONS>
-- @doc
--
-- @end
-- Created : 06. 七月 2018 17:52
---------------------------------------------------------------------

local requester = requester
local smbb_util = require("logic.tool.smbb_util")
local smbb_id = require("logic.tool.smbb_id")
local SERVICE = SERVICE.mail_service

local mail_lib = {}

---send_mail
---@param roleidlist table <number>
---@param mail0 mail
local function send_mail(roleidlist, mail0)
    local addlist = {}
    for i, roleid in ipairs(roleidlist) do
        local mailid = smbb_id:gen_mailid()
        ---@type mail
        local mail = copy(mail0)
        mail.mailid, mail.receiver, mail._id = mailid, roleid, mailid
        table.insert(addlist, mail)
    end
    requester.send(SERVICE, "add_mail", addlist)
end

---send_notemp_mail
---@param RoleIDList number[]
---@param Subtype number
---@param Title string
---@param Content string
---@param Reward reward
function mail_lib.send_notemp_mail(RoleIDList, Subtype, Title, Content, Reward)
    local mail0 = RECORD.mail_t()
    if Subtype then
        mail0.subtype = Subtype
    end
    if Title then
        mail0.title = Title
    end
    if Content then
        mail0.content = Content
    end
    if Reward then
        mail0.reward = Reward
    end
    mail0.timestamp = smbb_util.nowsec()
    send_mail(RoleIDList, mail0)
end

return mail_lib
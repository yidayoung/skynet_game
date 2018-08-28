--
-- Created by IntelliJ IDEA.
-- User: wangyida
-- Date: 2018/7/3
-- Time: 17:17
--

local logger = require("lualib.logger")

local role_data = {}

local state = {}

function role_data.get_state()
    return state
end

local data_set = {}
local data_meta = {
    __index    = function(table, index)
        -- 只有key是 ROLE_DATA_LIST 一员到时候才做get
        if ROLE_DATA_LIST[index] ~= nil then
            local cur_val = rawget(table, index)
            if cur_val ~= nil then
                return cur_val
            else
                -- init 函数千万不能调用role_data.set 否则会死循环
                rawset(table, index, {})
                --@todo 这里加不加这个保护？加了可能识别不出来
                local val, is_dirty = require("logic.role." .. ROLE_DATA_LIST[index].module).init()
                if is_dirty then
                    val = { val = val, is_dirty = true }
                else
                    val = { val = val, is_dirty = false }
                end
                rawset(table, index, val)
                return val
            end
        else
            return nil
        end
    end,
    __newindex = function(table, index, value)
        -- 只有key是 ROLE_DATA_LIST 一员到时候才做get
        if ROLE_DATA_LIST[index] ~= nil then
            rawset(table, index, value)
        else
            logger.errorf("role_data set err, key:", index)
        end
    end
}
-- 每个data 都由 {val=Val,is_dirty=IsDirty} 构成
-- val 表示具体的值，is_dirty用来标记是否染色
setmetatable(data_set, data_meta)

local function dirty(old_is_dirty, is_dirty)
    local new_is_dirty
    old_is_dirty = old_is_dirty or false
    if is_dirty ~= nil then
        new_is_dirty = (old_is_dirty and is_dirty)
    else
        new_is_dirty = old_is_dirty
    end
    return new_is_dirty
end

local function get_info(index)
    return copy(data_set[index].val)
end

local function set_info(index, info, is_dirty)
    data_set[index].val = info
    data_set[index].is_dirty = dirty(data_set[index].is_dirty, is_dirty)
end

function role_data.get_dataset()
    return data_set
end

---@return role_info
function role_data.get_role_info()
    return get_info(ROLE_DATA_LIST.role_info.key)
end

---set_role_info
---@param info role_info
---@param is_dirty boolean
function role_data.set_role_info(info, is_dirty)
    set_info(ROLE_DATA_LIST.role_info.key, info, is_dirty)
end

---@return number
function role_data.get_role_id()
    return role_data.get_role_info().roleid or 0
end

---@return money_info
function role_data.get_money_info()
    return get_info(ROLE_DATA_LIST.money_info.key)
end

---set_money_info
---@param info money_info
---@param is_dirty boolean
function role_data.set_money_info(info, is_dirty)
    set_info(ROLE_DATA_LIST.money_info.key, info, is_dirty)
end

---@return table<number, number>
function role_data.get_money_list()
    return role_data.get_money_info().moneylist
end

---set_money_list
---@param moneylist table<number, number>
---@param is_dirty boolean
function role_data.set_money_list(moneylist, is_dirty)
    local money_info = role_data.get_money_info()
    money_info.moneylist = moneylist
    role_data.set_money_info(money_info, is_dirty)
end

---@return rmail_info
function role_data.get_rmail_info()
    return get_info(ROLE_DATA_LIST.rmail_info.key)
end

---set_rmail_info
---@param info rmail_info
---@param is_dirty boolean
function role_data.set_rmail_info(info, is_dirty)
    set_info(ROLE_DATA_LIST.rmail_info.key, info, is_dirty)
end

---@return role_extra
function role_data.get_role_extra()
    return get_info(ROLE_DATA_LIST.role_extra.key)
end

---set_role_extra
---@param info role_extra
---@param is_dirty boolean
function role_data.set_role_extra(info, is_dirty)
    set_info(ROLE_DATA_LIST.role_extra.key, info, is_dirty)
end

---@return sign_info
function role_data.get_sign_info()
    return get_info(ROLE_DATA_LIST.sign_info.key)
end

---set_sign_info
---@param info sign_info
---@param is_dirty boolean
function role_data.set_sign_info(info, is_dirty)
    set_info(ROLE_DATA_LIST.sign_info.key, info, is_dirty)
end

---@return sign_info
function role_data.get_sign_info()
    return get_info(ROLE_DATA_LIST.sign_info.key)
end

---set_sign_info
---@param info sign_info
---@param is_dirty boolean
function role_data.set_sign_info(info, is_dirty)
    set_info(ROLE_DATA_LIST.sign_info.key, info, is_dirty)
end

return role_data

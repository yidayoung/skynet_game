--lua基础库扩展
local math = math
local table = table
local os = os
local string = string
local tonumber = tonumber
local tostring = tostring
local setmetatable = setmetatable
local getmetatable = getmetatable

function math.round(num)
    return math.floor(num + 0.5)
end

function math.pow(num, n)
    return num ^ n
end

function tonum(v, base)
    return tonumber(v, base) or 0
end

function toint(v)
    return math.round(tonum(v))
end

function tobool(v)
    return (v ~= nil and v ~= false)
end

function totable(v)
    if type(v) ~= "table" then v = {} end
    return v
end



function array_totable(array)
    if not array then
        return nil
    end
    array = totable(array)
    local tb = {}
    for i=1,#array,2 do
        tb[array[i]] = array[i+1]
    end
    return tb
end

function clone(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for key, value in pairs(object) do
            new_table[_copy(key)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

---copy
---@param object T
---@return T
function copy(object)
    if not object then return object end
     local new = {}
     for k, v in pairs(object) do
        local t = type(v)
        if t == "table" then
            new[k] = copy(v)
        elseif t == "userdata" then
            new[k] = copy(v)
        else
            new[k] = v
        end
     end
    return new
end

function string.split(str, delimiter)
    str = tostring(str)
    delimiter = tostring(delimiter)
    if (delimiter=='') then return false end
    local pos,arr = 0, {}
    -- for each divider found
    for st,sp in function() return string.find(str, delimiter, pos, true) end do
        table.insert(arr, string.sub(str, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(str, pos))
    return arr
end

function string.ltrim(str)
    return string.gsub(str, "^[ \t\n\r]+", "")
end

function string.rtrim(str)
    return string.gsub(str, "[ \t\n\r]+$", "")
end

function string.trim(str)
    str = string.gsub(str, "^[ \t\n\r]+", "")
    return string.gsub(str, "[ \t\n\r]+$", "")
end

function string.ucfirst(str)
    return string.upper(string.sub(str, 1, 1)) .. string.sub(str, 2)
end

local function urlencodeChar(char)
    return "%" .. string.format("%02X", string.byte(c))
end

function string.urlencode(str)
    -- convert line endings
    str = string.gsub(tostring(str), "\n", "\r\n")
    -- escape all characters but alphanumeric, '.' and '-'
    str = string.gsub(str, "([^%w%.%- ])", urlencodeChar)
    -- convert spaces to "+" symbols
    return string.gsub(str, " ", "+")
end

function string.urldecode(str)
    str = string.gsub (str, "+", " ")
    str = string.gsub (str, "%%(%x%x)", function(h) return string.char(tonum(h,16)) end)
    str = string.gsub (str, "\r\n", "\n")
    return str
end

function string.utf8len(str)
    local len  = #str
    local left = len
    local cnt  = 0
    local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
    while left ~= 0 do
        local tmp = string.byte(str, -left)
        local i   = #arr
        while arr[i] do
            if tmp >= arr[i] then
                left = left - i
                break
            end
            i = i - 1
        end
        cnt = cnt + 1
    end
    return cnt
end

function string.utf8sub(str, start, last)
    if start > last then
        return ""
    end
    local len  = #str
    local left = len
    local cnt  = 0
    local startByte = len + 1
    local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
    while left ~= 0 do
        local tmp = string.byte(str, -left)
        local i   = #arr        
        while arr[i] do
            if tmp >= arr[i] then
                left = left - i
                break
            end
            i = i - 1
        end
        cnt = cnt + 1
        if cnt == start then
            startByte = len - (left + i) + 1
        end
        if cnt == last then
            return string.sub(str, startByte, len - left)
        end
    end
    return string.sub(str, startByte, len)
end

function table.map(t, fn)
    for k, v in pairs(t) do
        t[k] = fn(v, k)
    end
end

function table.walk(t, fn)
    for k,v in pairs(t) do
        fn(v, k)
    end
end

function table.walk2(dic, fun)
    local keys = table.keys(dic)
    table.sort(keys)
    for _,key in ipairs(keys) do
        local r = fun(dic[key], key)
        if r then return table.unpack(r) end
    end
end

function table.filter(t, fn)
    for k, v in pairs(t) do
        if not fn(v, k) then t[k] = nil end
    end
end

function table.empty(t)
	return _G.next(t) == nil
end

function table.nums(t)
    local count = 0
    for k, v in pairs(t) do
        count = count + 1
    end
    return count
end

function table.keys(t)
    local keys = {}
    for k, v in pairs(t) do
        keys[#keys + 1] = k
    end
    return keys
end

function table.values(t)
    local values = {}
    for k, v in pairs(t) do
        values[#values + 1] = v
    end
    return values
end

--[[
    table.zero(t, len) ==> memset(&t, 0, len)
]]
function table.zero(t, len)
    assert(type(t) == "table")
    for i=1, len do
        t[i] = 0
    end
end

--[[
    table.malloc(len) ==> malloc(len)
]]
function table.malloc(len)
    local t = {}
    table.zero(t, len)
    return t
end

--[[
    {a=1, b=2} ==> {a, 1, b, 2}
]]
function table.toarray(tb)
    if type(tb) ~= "table" then return nil end
    local info = {}
    for k, v in pairs(tb) do
        info[#info+1] = k
        info[#info+1] = v
    end
    return info
end



function table.tostring(root)
    if root == nil then
        return "nil"
    elseif type(root) == "number" then
        return tostring(root)
    elseif type(root) == "string" then
        return root
    end
    local cache = {  [root] = "." }
    local function _dump(t,space,name)
        local temp = {}
        for k,v in pairs(t) do
            local key = tostring(k)
            if cache[v] then
                table.insert(temp,"+" .. key .. " {" .. cache[v].."}")
            elseif type(v) == "table" then
                local new_key = name .. "." .. key
                cache[v] = new_key
                table.insert(temp,"+" .. key .. _dump(v,space .. (next(t,k) and "|" or " " ).. string.rep(" ",#key),new_key))
            else
                if type(v) == "string" then
                    table.insert(temp,"+" .. key .. " [\"" .. tostring(v).."\"]")
                else
                    table.insert(temp,"+" .. key .. " [" .. tostring(v).."]")
                end
                
            end
        end
        return table.concat(temp,"\n"..space)
    end
    return (_dump(root, "",""))
end

-- {1,2,3},3 => true
function table.member(t, val)
    for _,v in ipairs(t) do
        if val == v then
            return true
        end
    end
    return false
end

function table.merge(dest, src)
    for k, v in pairs(src) do
        dest[k] = v
    end
end

function table.merge2(dest, src)
    local tbl = {}
    for _, v in pairs(dest) do
        table.insert(tbl, v)
    end
    for _, v in pairs(src) do
        table.insert(tbl, v)
    end
    return tbl
end


function spent(table)
    return (require "lualib.serpent").block(table)
end

function spent_print(prev_str, table, suffix)
    suffix = nil or ""
    print(prev_str .. spent(table) .. suffix)
end

function bin2hex(s)
    s = string.gsub(s, "(.)", function(x)
        return string.format("%02X ", string.byte(x))
    end)
    return s
end

function table.read_only(inputTable)
    local travelled_tables = {}
    local function __read_only(tbl)
        if not travelled_tables[tbl] then
            local tbl_mt = getmetatable(tbl)
            if not tbl_mt then
                tbl_mt = {}
                setmetatable(tbl, tbl_mt)
            end

            local proxy = tbl_mt.__read_only_proxy
            if not proxy then
                proxy = {}
                tbl_mt.__read_only_proxy = proxy
                local proxy_mt = {
                    __index = tbl,
                    __newindex = function (t, k, v) error("error write to a read-only table with key = " .. tostring(k)) end,
                    __pairs = function (t) return pairs(tbl) end,
                    -- __ipairs = function (t) return ipairs(tbl) end,   5.3版本不需要此方法
                    __len = function (t) return #tbl end,
                    __read_only_proxy = proxy
                }
                setmetatable(proxy, proxy_mt)
            end
            travelled_tables[tbl] = proxy
            for k, v in pairs(tbl) do
                if type(v) == "table" then
                    tbl[k] = __read_only(v)
                end
            end
        end
        return travelled_tables[tbl]
    end
    return __read_only(inputTable)
end

function is_number(number)
    return type(number) == "number"
end

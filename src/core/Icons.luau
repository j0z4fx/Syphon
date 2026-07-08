--!nonstrict
-- Icon provider — wraps Footagesus/Icons (https://github.com/Footagesus/Icons).
-- That module is itself loadstring-able and lazily fetches each icon set, so we
-- load it once on first use and expose GetIcon(name) -> "rbxassetid://...".
-- Names default to the lucide set; prefix for others, e.g. "sfsymbols:HouseFill".
local SOURCE = 'https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua'

local lib
local function ensure()
    if lib ~= nil then return lib end
    local ok, res = pcall(function()
        return loadstring(game:HttpGet(SOURCE))()
    end)
    lib = (ok and type(res) == 'table') and res or false
    return lib
end

local Icons = {}

function Icons.SetType(kind)
    local l = ensure()
    if l then pcall(l.SetIconsType, kind) end
end

-- Returns an rbxassetid string, or '' if the library/icon failed to resolve.
function Icons.GetIcon(name)
    local l = ensure()
    if not l then return '' end
    local ok, id = pcall(l.GetIcon, name)
    return (ok and type(id) == 'string') and id or ''
end

return Icons

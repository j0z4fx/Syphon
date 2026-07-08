--!nonstrict
-- Global state registry: the flat lookup tables user scripts and the save
-- system read from (mirrors Linoria's Toggles / Options). Controls register
-- their handle here under a string flag. Kept intentionally dumb — a plain
-- table plus a tiny subscribe hook for React to observe changes.

local Store = {
    Toggles = {}, -- flag -> toggle handle
    Options = {}, -- flag -> everything-else handle
}

local listeners = {}

-- Notify subscribers that `flag` changed. Controls call this on value change.
function Store:Fire(flag, value)
    local bucket = listeners[flag]
    if not bucket then return end
    for callback in pairs(bucket) do
        task.spawn(callback, value, flag)
    end
end

-- Subscribe to a flag. Returns an unsubscribe function.
function Store:Subscribe(flag, callback)
    listeners[flag] = listeners[flag] or {}
    listeners[flag][callback] = true
    return function()
        if listeners[flag] then
            listeners[flag][callback] = nil
        end
    end
end

return Store

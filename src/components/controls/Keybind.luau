--!nonstrict
-- Keybind — key/mouse bind with Always/Toggle/Hold modes. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Default: string, Mode: string?, Text: string?, Flag: string?, Callback: (boolean) -> () }
local function Keybind(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Keybind

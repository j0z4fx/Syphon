--!nonstrict
-- Slider — numeric slider. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string, Min: number, Max: number, Default: number, Rounding: number?, Suffix: string?, Flag: string?, Callback: (number) -> () }
local function Slider(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Slider

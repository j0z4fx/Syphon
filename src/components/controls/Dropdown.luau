--!nonstrict
-- Dropdown — single/multi select list. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string?, Values: {string}, Default: any?, Multi: boolean?, Flag: string?, Callback: (any) -> () }
local function Dropdown(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Dropdown

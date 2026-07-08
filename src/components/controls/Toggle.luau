--!nonstrict
-- Toggle — on/off checkbox, registers in Store.Toggles. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string, Default: boolean?, Flag: string?, Callback: (boolean) -> (), Risky: boolean? }
local function Toggle(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Toggle

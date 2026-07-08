--!nonstrict
-- ColorPicker — HSV color + optional transparency. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Default: Color3, Transparency: number?, Title: string?, Flag: string?, Callback: (Color3) -> () }
local function ColorPicker(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return ColorPicker

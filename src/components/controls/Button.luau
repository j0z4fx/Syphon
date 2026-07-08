--!nonstrict
-- Button — click button, optional double-click confirm. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string, Callback: () -> (), DoubleClick: boolean?, Tooltip: string? }
local function Button(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Button

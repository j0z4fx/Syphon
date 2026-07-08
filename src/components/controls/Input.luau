--!nonstrict
-- Input — text box. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string, Default: string?, Placeholder: string?, Numeric: boolean?, Finished: boolean?, Flag: string?, Callback: (string) -> () }
local function Input(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Input

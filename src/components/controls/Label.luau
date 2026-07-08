--!nonstrict
-- Label — static text row, optional wrap. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Text: string, DoesWrap: boolean? }
local function Label(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store
    -- TODO: build element + wire value/state into Store under props.Flag.
    return nil
end

return Label

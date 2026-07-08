--!nonstrict
-- Window — top-level draggable frame that hosts tabs. Scaffold: no UI yet.
local Env = require('core/env')

-- props: { Title: string?, Size: UDim2?, Position: UDim2?, children: ... }
local function Window(props)
    local React = Env.React
    -- TODO: render outer frame + title bar + tab area; render props.children.
    return nil
end

return Window

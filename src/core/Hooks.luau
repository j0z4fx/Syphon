--!nonstrict
-- Small React helpers shared across components.
local Env = require('core/env')

local Hooks = {}

-- Returns (hovered, pressed, handlers) to spread onto a Gui element.
-- Gates hover-off on press so a drag doesn't drop the hover state early.
function Hooks.useInteractive()
    local React = Env.React
    local hovered, setHovered = React.useState(false)
    local pressed, setPressed = React.useState(false)

    local handlers = {
        [React.Event.MouseEnter] = function() setHovered(true) end,
        [React.Event.MouseLeave] = function() setHovered(false); setPressed(false) end,
        [React.Event.InputBegan] = function(_, io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then setPressed(true) end
        end,
        [React.Event.InputEnded] = function(_, io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then setPressed(false) end
        end,
    }
    return hovered, pressed, handlers
end

return Hooks

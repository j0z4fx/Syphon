--!nonstrict
-- Divider — 1px horizontal separator.
local Env = require('core/env')

-- props: { LayoutOrder: number? }
local function Divider(props)
    local React = Env.React
    local Theme = Env.Theme

    return React.createElement('Frame', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 1),
        BackgroundColor3 = Theme.Color.Outline,
        BorderSizePixel = 0,
    })
end

return Divider

--!nonstrict
-- Label — static text row, wraps and auto-sizes.
local Env = require('core/env')

-- props: { Text: string, Muted: boolean?, LayoutOrder: number? }
local function Label(props)
    local React = Env.React
    local Theme = Env.Theme

    return React.createElement('TextLabel', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        FontFace = Theme.Face.Regular,
        Text = props.Text or '',
        TextColor3 = props.Muted and Theme.Color.TextMuted or Theme.Color.Text,
        TextSize = Theme.Text.SizeSml,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
end

return Label

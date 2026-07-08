--!nonstrict
-- Groupbox — titled rounded container that stacks controls vertically and
-- auto-sizes to content.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

-- props: { Name: string, LayoutOrder: number?, children: controls }
local function Groupbox(props)
    local React = Env.React
    local Theme = Env.Theme

    return React.createElement(RoundedFrame, {
        Color = Theme.Color.Surface,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        LayoutOrder = props.LayoutOrder,
        Active = true, -- sink clicks so empty groupbox space doesn't drag the window
    }, {
        Pad = React.createElement('UIPadding', {
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 8),
            PaddingBottom = UDim.new(0, 8),
        }),
        Layout = React.createElement('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 6),
        }),
        Title = React.createElement('TextLabel', {
            LayoutOrder = 0,
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Bold,
            Text = props.Name or '',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Body = React.createElement(React.Fragment, nil, props.children),
    })
end

return Groupbox

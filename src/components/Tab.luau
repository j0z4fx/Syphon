--!nonstrict
-- Tab — a page of content laid out as 3 scrollable columns.
local Env = require('core/env')

local PAD = 8

local function column(React, order, children)
    return React.createElement('ScrollingFrame', {
        Size = UDim2.new(0, 0, 1, 0), -- width comes from the list layout's flex fill
        LayoutOrder = order,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        ScrollBarThickness = 2,
        ScrollBarImageColor3 = Env.Theme.Color.Outline,
    }, {
        Layout = React.createElement('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, PAD),
        }),
        Inner = React.createElement('Frame', { -- keeps groupboxes off the scrollbar edge
            Size = UDim2.new(1, 0, 0, 0),
            BackgroundTransparency = 1,
            Visible = false,
        }),
        Body = React.createElement(React.Fragment, nil, children),
    })
end

-- props: { Visible: boolean?, Column1: table?, Column2: table?, Column3: table? }
local function Tab(props)
    local React = Env.React

    return React.createElement('Frame', {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Visible = props.Visible ~= false,
    }, {
        Pad = React.createElement('UIPadding', {
            PaddingLeft = UDim.new(0, PAD),
            PaddingRight = UDim.new(0, PAD),
            PaddingTop = UDim.new(0, PAD),
            PaddingBottom = UDim.new(0, PAD),
        }),
        Layout = React.createElement('UIListLayout', {
            FillDirection = Enum.FillDirection.Horizontal,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, PAD),
            HorizontalFlex = Enum.UIFlexAlignment.Fill, -- equal column widths, exact gutters
        }),
        Col1 = column(React, 1, props.Column1),
        Col2 = column(React, 2, props.Column2),
        Col3 = column(React, 3, props.Column3),
    })
end

return Tab

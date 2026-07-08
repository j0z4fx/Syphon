--!nonstrict
-- RoundedFrame — colored box with engine-drawn anti-aliased corners.
-- Renders as a 9-sliced ImageLabel (ImageButton with props.Button) tinted via
-- ImageColor3; falls back to Frame/TextButton + UICorner without the engine.
local Env = require('core/env')
local Corners = require('core/Corners')

-- props: { Color: Color3, Radius: number?, Transparency: number?, Button: boolean?,
--          OnClick: (() -> ())?, plus common layout props, children }
local function RoundedFrame(props)
    local React = Env.React
    local Theme = Env.Theme
    local radius = props.Radius or Theme.Layout.Corner
    local slice = Corners.get(radius)

    local base = {
        Size = props.Size,
        Position = props.Position,
        AnchorPoint = props.AnchorPoint,
        ZIndex = props.ZIndex,
        LayoutOrder = props.LayoutOrder,
        AutomaticSize = props.AutomaticSize,
        ClipsDescendants = props.ClipsDescendants,
        Visible = props.Visible ~= false,
        Active = props.Active,
    }

    -- normalize children into a mutable table
    local kids = {}
    if props.children then
        if props.children['$$typeof'] or props.children.props then
            kids.child = props.children
        else
            for k, v in pairs(props.children) do kids[k] = v end
        end
    end

    local class
    if slice then
        class = props.Button and 'ImageButton' or 'ImageLabel'
        base.BackgroundTransparency = 1
        base.ImageContent = slice.ImageContent
        base.ScaleType = Enum.ScaleType.Slice
        base.SliceCenter = slice.SliceCenter
        base.ImageColor3 = props.Color
        base.ImageTransparency = props.Transparency or 0
    else
        class = props.Button and 'TextButton' or 'Frame'
        base.BackgroundColor3 = props.Color
        base.BackgroundTransparency = props.Transparency or 0
        base.BorderSizePixel = 0
        kids.__corner = React.createElement('UICorner', {
            CornerRadius = UDim.new(0, radius),
        })
    end

    if props.Button then
        base.AutoButtonColor = false
        if class == 'TextButton' then base.Text = '' end
        base[React.Event.Activated] = props.OnClick
    end

    return React.createElement(class, base, kids)
end

return RoundedFrame

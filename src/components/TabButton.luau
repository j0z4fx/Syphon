--!nonstrict
-- TabButton — square icon button with engine-drawn corners.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

-- props: { Image: string?, Active: boolean?, Size: UDim2?, LayoutOrder: number?, OnClick: () -> ()? }
local function TabButton(props)
    local React = Env.React
    local Theme = Env.Theme

    return React.createElement(RoundedFrame, {
        Button = true,
        Color = props.Active and Theme.Color.Accent or Theme.Color.Surface,
        Radius = Theme.Layout.Corner,
        Size = props.Size or UDim2.fromOffset(34, 34),
        LayoutOrder = props.LayoutOrder,
        OnClick = props.OnClick,
    }, {
        Icon = React.createElement('ImageLabel', {
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(18, 18),
            BackgroundTransparency = 1,
            Image = props.Image or '',
            ImageColor3 = props.Active and Theme.Color.Background or Theme.Color.Text,
        }),
    })
end

return TabButton

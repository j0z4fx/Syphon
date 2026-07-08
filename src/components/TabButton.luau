--!nonstrict
-- TabButton — square icon button. Corner radius matches the window.
local Env = require('core/env')

-- props: { Image: string?, Active: boolean?, Size: UDim2?, LayoutOrder: number?, OnClick: () -> ()? }
local function TabButton(props)
    local React = Env.React
    local Theme = Env.Theme

    return React.createElement('TextButton', {
        Size = props.Size or UDim2.fromOffset(34, 34),
        LayoutOrder = props.LayoutOrder,
        BackgroundColor3 = props.Active and Theme.Color.Accent or Theme.Color.Surface,
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = '',
        [React.Event.Activated] = props.OnClick,
    }, {
        Corner = React.createElement('UICorner', {
            CornerRadius = UDim.new(0, Theme.Layout.Corner),
        }),
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

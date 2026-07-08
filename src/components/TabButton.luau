--!nonstrict
-- TabButton — square icon button; animated hover + active state.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')
local Motion = require('core/Motion')
local Hooks = require('core/Hooks')

-- props: { Image: string?, Active: boolean?, Size: UDim2?, LayoutOrder: number?, OnClick: () -> ()? }
local function TabButton(props)
    local React = Env.React
    local Theme = Env.Theme

    local hovered, pressed, handlers = Hooks.useInteractive()
    local bgRef = React.useRef(nil)
    local iconRef = React.useRef(nil)
    local scaleRef = React.useRef(nil)

    React.useEffect(function()
        local bg, icon = bgRef.current, iconRef.current
        if bg then
            local prop = bg:IsA('ImageLabel') and 'ImageColor3' or 'BackgroundColor3'
            local color = props.Active and Theme.Color.Accent
                or (hovered and Theme.Color.Element or Theme.Color.Surface)
            Motion.tween(bg, Motion.Snappy, { [prop] = color })
        end
        if icon then
            Motion.tween(icon, Motion.Snappy, {
                ImageColor3 = props.Active and Theme.Color.Background or Theme.Color.Text,
            })
        end
    end, { props.Active, hovered })

    React.useEffect(function()
        local s = scaleRef.current
        if s then Motion.tween(s, Motion.Snappy, { Scale = pressed and 0.9 or 1 }) end
    end, { pressed })

    return React.createElement(RoundedFrame, {
        ref = bgRef,
        Button = true,
        Color = props.Active and Theme.Color.Accent or Theme.Color.Surface,
        Radius = Theme.Layout.Corner,
        Size = props.Size or UDim2.fromOffset(34, 34),
        LayoutOrder = props.LayoutOrder,
        OnClick = props.OnClick,
        Handlers = handlers,
    }, {
        Scale = React.createElement('UIScale', { ref = scaleRef, Scale = 1 }),
        Icon = React.createElement('ImageLabel', {
            ref = iconRef,
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

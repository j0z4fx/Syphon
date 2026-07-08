--!nonstrict
-- Button — full-width click button; animated hover tint + press scale.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')
local Motion = require('core/Motion')
local Hooks = require('core/Hooks')

-- props: { Text: string, Callback: () -> ()?, LayoutOrder: number? }
local function Button(props)
    local React = Env.React
    local Theme = Env.Theme

    local hovered, pressed, handlers = Hooks.useInteractive()
    local bgRef = React.useRef(nil)
    local scaleRef = React.useRef(nil)

    React.useEffect(function()
        local bg = bgRef.current
        if not bg then return end
        local prop = bg:IsA('ImageLabel') and 'ImageColor3' or 'BackgroundColor3'
        Motion.tween(bg, Motion.Snappy, {
            [prop] = pressed and Theme.Color.ElementDim
                or (hovered and Theme.Color.Outline or Theme.Color.Element),
        })
    end, { hovered, pressed })

    React.useEffect(function()
        local s = scaleRef.current
        if s then Motion.tween(s, Motion.Snappy, { Scale = pressed and 0.97 or 1 }) end
    end, { pressed })

    return React.createElement(RoundedFrame, {
        ref = bgRef,
        Button = true,
        Color = Theme.Color.Element,
        Radius = Theme.Layout.CornerSm,
        Size = UDim2.new(1, 0, 0, 30),
        LayoutOrder = props.LayoutOrder,
        Handlers = handlers,
        OnClick = function()
            if props.Callback then Env.Library:SafeCall(props.Callback) end
        end,
    }, {
        Scale = React.createElement('UIScale', { ref = scaleRef, Scale = 1 }),
        Text = React.createElement('TextLabel', {
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Medium,
            Text = props.Text or 'Button',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
        }),
    })
end

return Button

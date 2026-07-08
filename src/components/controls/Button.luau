--!nonstrict
-- Button — full-width click button with press feedback.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

-- props: { Text: string, Callback: () -> ()?, LayoutOrder: number? }
local function Button(props)
    local React = Env.React
    local Theme = Env.Theme

    local pressed, setPressed = React.useState(false)

    return React.createElement(RoundedFrame, {
        Button = true,
        Color = pressed and Theme.Color.ElementDim or Theme.Color.Element,
        Radius = Theme.Layout.CornerSm,
        Size = UDim2.new(1, 0, 0, 30),
        LayoutOrder = props.LayoutOrder,
        OnClick = function()
            if props.Callback then Env.Library:SafeCall(props.Callback) end
        end,
    }, {
        Press = React.createElement('TextButton', { -- press visual state
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
            Text = '',
            [React.Event.InputBegan] = function(_, io)
                if io.UserInputType == Enum.UserInputType.MouseButton1 then setPressed(true) end
            end,
            [React.Event.InputEnded] = function(_, io)
                if io.UserInputType == Enum.UserInputType.MouseButton1 then setPressed(false) end
            end,
            [React.Event.Activated] = function()
                if props.Callback then Env.Library:SafeCall(props.Callback) end
            end,
        }),
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

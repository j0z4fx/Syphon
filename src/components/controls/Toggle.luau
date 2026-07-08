--!nonstrict
-- Toggle — on/off row; registers into Store.Toggles under props.Flag.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

-- props: { Text: string, Default: boolean?, Flag: string?, Callback: (boolean) -> ()?, LayoutOrder: number? }
local function Toggle(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local value, setValue = React.useState(props.Default or false)
    local valueRef = React.useRef(value)
    valueRef.current = value

    local set = React.useCallback(function(v)
        v = not not v
        setValue(v)
        if props.Callback then Env.Library:SafeCall(props.Callback, v) end
        if props.Flag then Store:Fire(props.Flag, v) end
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Toggles[props.Flag] = {
            Type = 'Toggle',
            Get = function() return valueRef.current end,
            Set = set,
        }
        return function() Store.Toggles[props.Flag] = nil end
    end, {})

    return React.createElement('TextButton', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 22),
        BackgroundTransparency = 1,
        Text = '',
        [React.Event.Activated] = function() set(not valueRef.current) end,
    }, {
        Box = React.createElement(RoundedFrame, {
            Color = value and Theme.Color.Accent or Theme.Color.Element,
            Radius = Theme.Layout.CornerSm,
            Size = UDim2.fromOffset(16, 16),
            Position = UDim2.new(0, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
        }, {
            Check = React.createElement('ImageLabel', {
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                Size = UDim2.fromOffset(12, 12),
                BackgroundTransparency = 1,
                Image = Env.Icons.GetIcon('check'),
                ImageColor3 = Theme.Color.Background,
                ImageTransparency = value and 0 or 1,
            }),
        }),
        Text = React.createElement('TextLabel', {
            Position = UDim2.fromOffset(24, 0),
            Size = UDim2.new(1, -24, 1, 0),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Toggle',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
    })
end

return Toggle

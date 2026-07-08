--!nonstrict
-- Input — labeled text box; registers into Store.Options under props.Flag.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

-- props: { Text: string, Default: string?, Placeholder: string?, Numeric: boolean?,
--          Flag: string?, Callback: (string) -> ()?, LayoutOrder: number? }
local function Input(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local value, setValue = React.useState(props.Default or '')
    local valueRef = React.useRef(value)
    valueRef.current = value
    local boxRef = React.useRef(nil)

    local set = React.useCallback(function(v)
        v = tostring(v)
        if props.Numeric and v ~= '' and not tonumber(v) then
            v = valueRef.current
        end
        setValue(v)
        if boxRef.current then boxRef.current.Text = v end
        if props.Callback then Env.Library:SafeCall(props.Callback, v) end
        if props.Flag then Store:Fire(props.Flag, v) end
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Options[props.Flag] = {
            Type = 'Input',
            Get = function() return valueRef.current end,
            Set = set,
        }
        return function() Store.Options[props.Flag] = nil end
    end, {})

    return React.createElement('Frame', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 44),
        BackgroundTransparency = 1,
        Active = true,
    }, {
        Text = React.createElement('TextLabel', {
            Size = UDim2.new(1, 0, 0, 14),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Input',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        BoxBg = React.createElement(RoundedFrame, {
            Color = Theme.Color.Element,
            Radius = Theme.Layout.CornerSm,
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, 26),
        }, {
            Box = React.createElement('TextBox', {
                ref = boxRef,
                Position = UDim2.fromOffset(8, 0),
                Size = UDim2.new(1, -16, 1, 0),
                BackgroundTransparency = 1,
                FontFace = Theme.Face.Regular,
                Text = props.Default or '',
                PlaceholderText = props.Placeholder or '',
                PlaceholderColor3 = Theme.Color.TextMuted,
                TextColor3 = Theme.Color.Text,
                TextSize = Theme.Text.SizeSml,
                TextXAlignment = Enum.TextXAlignment.Left,
                ClearTextOnFocus = false,
                ClipsDescendants = true,
                [React.Event.FocusLost] = function(rbx)
                    set(rbx.Text)
                end,
            }),
        }),
    })
end

return Input

--!nonstrict
-- Input — labeled text box; registers into Store.Options under props.Flag.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')
local Motion = require('core/Motion')
local Hooks = require('core/Hooks')

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
    local bgRef = React.useRef(nil)
    local focused = React.useRef(false)
    local hovered, _, handlers = Hooks.useInteractive()

    React.useEffect(function()
        local bg = bgRef.current
        if not bg then return end
        local prop = bg:IsA('ImageLabel') and 'ImageColor3' or 'BackgroundColor3'
        Motion.tween(bg, Motion.Snappy, {
            [prop] = (hovered or focused.current) and Theme.Color.Outline or Theme.Color.Element,
        })
    end, { hovered })

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
            ref = bgRef,
            Color = Theme.Color.Element,
            Radius = Theme.Layout.CornerSm,
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, 26),
            Handlers = handlers,
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
                [React.Event.Focused] = function()
                    focused.current = true
                    if bgRef.current then
                        Motion.tween(bgRef.current, Motion.Snappy, { ImageColor3 = Theme.Color.Outline })
                    end
                end,
                [React.Event.FocusLost] = function(rbx)
                    focused.current = false
                    if bgRef.current then
                        Motion.tween(bgRef.current, Motion.Snappy, { ImageColor3 = Theme.Color.Element })
                    end
                    set(rbx.Text)
                end,
            }),
        }),
    })
end

return Input

--!nonstrict
-- Toggle — NeverLose-style animated pill switch (30x18, sliding knob).
-- Registers into Store.Toggles under props.Flag.
local Env = require('core/env')
local Motion = require('core/Motion')
local Corners = require('core/Corners')
local Hooks = require('core/Hooks')

-- props: { Text: string, Default: boolean?, Flag: string?, Callback: (boolean) -> ()?, LayoutOrder: number? }
local function Toggle(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local value, setValue = React.useState(props.Default or false)
    local valueRef = React.useRef(value)
    valueRef.current = value
    local pillRef = React.useRef(nil)
    local knobRef = React.useRef(nil)
    local textRef = React.useRef(nil)
    local hovered, _, handlers = Hooks.useInteractive()

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

    -- NeverLose anim: pill tint + knob slide/opacity, Slowy (0.175s).
    -- Off + hover brightens the pill; text brightens on hover.
    React.useEffect(function()
        local pill, knob, text = pillRef.current, knobRef.current, textRef.current
        if pill then
            local prop = pill:IsA('ImageLabel') and 'ImageColor3' or 'BackgroundColor3'
            Motion.tween(pill, Motion.Slowy, {
                [prop] = value and Theme.Color.Accent
                    or (hovered and Theme.Color.Outline or Theme.Color.Element),
            })
        end
        if knob then
            local kprop = knob:IsA('ImageLabel') and 'ImageTransparency' or 'BackgroundTransparency'
            Motion.tween(knob, Motion.Slowy, {
                Position = value and UDim2.new(0.7, 0, 0.5, 0) or UDim2.new(0.3, 0, 0.5, 0),
                [kprop] = value and 0 or 0.5,
            })
        end
        if text then
            Motion.tween(text, Motion.Snappy, {
                TextColor3 = hovered and Theme.Color.Text or Theme.Color.TextMuted,
            })
        end
    end, { value, hovered })

    local pillSlice = Corners.get(9)
    local knobSlice = Corners.get(7)

    local pill
    if pillSlice then
        pill = React.createElement('ImageLabel', {
            ref = pillRef,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, 0, 0.5, 0),
            Size = UDim2.fromOffset(30, 18),
            BackgroundTransparency = 1,
            ImageContent = pillSlice.ImageContent,
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = pillSlice.SliceCenter,
            ImageColor3 = (props.Default and Theme.Color.Accent) or Theme.Color.Element,
        }, {
            Knob = React.createElement('ImageLabel', {
                ref = knobRef,
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = (props.Default and UDim2.new(0.7, 0, 0.5, 0)) or UDim2.new(0.3, 0, 0.5, 0),
                Size = UDim2.fromOffset(14, 14),
                BackgroundTransparency = 1,
                ImageContent = knobSlice and knobSlice.ImageContent,
                ScaleType = Enum.ScaleType.Slice,
                SliceCenter = knobSlice and knobSlice.SliceCenter,
                ImageColor3 = Color3.new(1, 1, 1),
                ImageTransparency = props.Default and 0 or 0.5,
            }),
        })
    else -- no corner engine: UICorner fallback
        pill = React.createElement('Frame', {
            ref = pillRef,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, 0, 0.5, 0),
            Size = UDim2.fromOffset(30, 18),
            BackgroundColor3 = (props.Default and Theme.Color.Accent) or Theme.Color.Element,
            BorderSizePixel = 0,
        }, {
            Round = React.createElement('UICorner', { CornerRadius = UDim.new(1, 0) }),
            Knob = React.createElement('Frame', {
                ref = knobRef,
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = (props.Default and UDim2.new(0.7, 0, 0.5, 0)) or UDim2.new(0.3, 0, 0.5, 0),
                Size = UDim2.fromOffset(14, 14),
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = props.Default and 0 or 0.5,
                BorderSizePixel = 0,
            }, {
                Round = React.createElement('UICorner', { CornerRadius = UDim.new(1, 0) }),
            }),
        })
    end

    return React.createElement('TextButton', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 22),
        BackgroundTransparency = 1,
        Text = '',
        [React.Event.Activated] = function() set(not valueRef.current) end,
        [React.Event.MouseEnter] = handlers[React.Event.MouseEnter],
        [React.Event.MouseLeave] = handlers[React.Event.MouseLeave],
    }, {
        Text = React.createElement('TextLabel', {
            ref = textRef,
            Size = UDim2.new(1, -38, 1, 0),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Toggle',
            TextColor3 = Theme.Color.TextMuted,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Pill = pill,
    })
end

return Toggle

--!nonstrict
-- Slider — numeric drag slider; fill + hover animate. Registers into Store.Options.
local Env = require('core/env')
local Drag = require('core/Drag')
local Motion = require('core/Motion')
local Hooks = require('core/Hooks')

-- props: { Text: string, Min: number, Max: number, Default: number?, Rounding: number?,
--          Suffix: string?, Flag: string?, Callback: (number) -> ()?, LayoutOrder: number? }
local function Slider(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local min, max = props.Min or 0, props.Max or 100
    local rounding = props.Rounding or 0

    local function round(n)
        local mult = 10 ^ rounding
        return math.floor(n * mult + 0.5) / mult
    end

    local value, setValue = React.useState(round(math.clamp(props.Default or min, min, max)))
    local valueRef = React.useRef(value)
    valueRef.current = value
    local barRef = React.useRef(nil)
    local fillRef = React.useRef(nil)
    local dragging = React.useRef(false)

    local hovered, _, handlers = Hooks.useInteractive()

    local set = React.useCallback(function(v)
        v = round(math.clamp(tonumber(v) or min, min, max))
        setValue(v)
        if props.Callback then Env.Library:SafeCall(props.Callback, v) end
        if props.Flag then Store:Fire(props.Flag, v) end
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Options[props.Flag] = {
            Type = 'Slider',
            Get = function() return valueRef.current end,
            Set = set,
        }
        return function() Store.Options[props.Flag] = nil end
    end, {})

    local frac = (max > min) and (value - min) / (max - min) or 0

    -- lerp the fill toward the value; instant while actively dragging so the
    -- bar tracks the cursor, tweened otherwise (SetValue / clicks)
    React.useEffect(function()
        local fill = fillRef.current
        if not fill then return end
        local target = UDim2.new(frac, 0, 1, 0)
        if dragging.current then
            fill.Size = target
        else
            Motion.tween(fill, Motion.Manual, { Size = target })
        end
    end, { frac })

    -- hover: brighten the track
    React.useEffect(function()
        local bar = barRef.current
        if bar then
            Motion.tween(bar, Motion.Snappy, {
                BackgroundColor3 = hovered and Theme.Color.Outline or Theme.Color.Element,
            })
        end
    end, { hovered })

    return React.createElement('Frame', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 34),
        BackgroundTransparency = 1,
        Active = true,
    }, {
        Text = React.createElement('TextLabel', {
            Size = UDim2.new(0.6, 0, 0, 14),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Slider',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Value = React.createElement('TextLabel', {
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.fromScale(1, 0),
            Size = UDim2.new(0.4, 0, 0, 14),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Medium,
            Text = tostring(value) .. (props.Suffix or ''),
            TextColor3 = Theme.Color.TextMuted,
            TextSize = Theme.Text.SizeXs,
            TextXAlignment = Enum.TextXAlignment.Right,
        }),
        Hit = React.createElement('TextButton', { -- generous hit area around the 6px track
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = '',
            [React.Event.MouseEnter] = handlers[React.Event.MouseEnter],
            [React.Event.MouseLeave] = handlers[React.Event.MouseLeave],
            [React.Event.InputBegan] = function(_, io)
                if io.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                local bar = barRef.current
                if not bar then return end
                dragging.current = true
                Drag.begin(bar, function(f)
                    if fillRef.current then fillRef.current.Size = UDim2.new(f.X, 0, 1, 0) end
                    set(min + (max - min) * f.X)
                end)
                task.delay(0, function()
                    -- clear the drag flag once the button releases
                    local conn
                    conn = game:GetService('UserInputService').InputEnded:Connect(function(io2)
                        if io2.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging.current = false
                            conn:Disconnect()
                        end
                    end)
                end)
            end,
        }, {
            -- CanvasGroup masks the square fill to the track's rounded shape
            Track = React.createElement('CanvasGroup', {
                ref = barRef,
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.fromScale(0, 0.5),
                Size = UDim2.new(1, 0, 0, 6),
                BackgroundColor3 = Theme.Color.Element,
                BorderSizePixel = 0,
            }, {
                Round = React.createElement('UICorner', { CornerRadius = UDim.new(0, 3) }),
                Fill = React.createElement('Frame', {
                    ref = fillRef,
                    -- constant initial; width is driven imperatively by the
                    -- frac effect so it can lerp instead of snapping each render
                    Size = UDim2.new(0, 0, 1, 0),
                    BackgroundColor3 = Theme.Color.Accent,
                    BorderSizePixel = 0,
                }),
            }),
        }),
    })
end

return Slider

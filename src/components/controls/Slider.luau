--!nonstrict
-- Slider — numeric drag slider; registers into Store.Options under props.Flag.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

local UserInputService = game:GetService('UserInputService')

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

    local function beginDrag()
        local bar = barRef.current
        if not bar then return end
        local function apply()
            local m = UserInputService:GetMouseLocation()
            local frac = math.clamp((m.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
            set(min + (max - min) * frac)
        end
        apply()
        local moveConn, upConn
        moveConn = UserInputService.InputChanged:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseMovement then apply() end
        end)
        upConn = UserInputService.InputEnded:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                moveConn:Disconnect(); upConn:Disconnect()
            end
        end)
    end

    local frac = (max > min) and (value - min) / (max - min) or 0

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
            [React.Event.InputBegan] = function(_, io)
                if io.UserInputType == Enum.UserInputType.MouseButton1 then beginDrag() end
            end,
        }, {
            Track = React.createElement(RoundedFrame, {
                Color = Theme.Color.Element,
                Radius = 3,
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.fromScale(0, 0.5),
                Size = UDim2.new(1, 0, 0, 6),
            }, {
                FillRef = React.createElement('Frame', { -- measurement anchor for drag math
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ref = barRef,
                }),
            }),
            Fill = React.createElement(RoundedFrame, {
                Color = Theme.Color.Accent,
                Radius = 3,
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.fromScale(0, 0.5),
                Size = UDim2.new(frac, 0, 0, 6),
                ZIndex = 2,
            }),
        }),
    })
end

return Slider

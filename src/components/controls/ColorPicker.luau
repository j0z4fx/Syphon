--!nonstrict
-- ColorPicker — swatch that expands into an HSV picker (SV map + hue bar).
-- Registers into Store.Options under props.Flag.
-- ponytail: no transparency slider; add when something needs it
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

local UserInputService = game:GetService('UserInputService')

local SV_IMAGE = 'rbxassetid://4155801252' -- white->hue / black overlay map

-- props: { Text: string, Default: Color3?, Flag: string?,
--          Callback: (Color3) -> ()?, LayoutOrder: number? }
local function ColorPicker(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local dh, ds, dv = (props.Default or Color3.fromRGB(255, 0, 0)):ToHSV()
    local hsv, setHsv = React.useState({ h = dh, s = ds, v = dv })
    local open, setOpen = React.useState(false)
    local hsvRef = React.useRef(hsv)
    hsvRef.current = hsv
    local mapRef = React.useRef(nil)
    local hueRef = React.useRef(nil)

    local function color()
        return Color3.fromHSV(hsv.h, hsv.s, hsv.v)
    end

    local announce = React.useCallback(function(c)
        if props.Callback then Env.Library:SafeCall(props.Callback, c) end
        if props.Flag then Store:Fire(props.Flag, c) end
    end, {})

    local set = React.useCallback(function(c)
        local h, s, v = c:ToHSV()
        setHsv({ h = h, s = s, v = v })
        announce(c)
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Options[props.Flag] = {
            Type = 'ColorPicker',
            Get = function()
                local t = hsvRef.current
                return Color3.fromHSV(t.h, t.s, t.v)
            end,
            Set = set,
        }
        return function() Store.Options[props.Flag] = nil end
    end, {})

    -- drag helper: track mouse until release, mapping position inside `ref`
    local function drag(ref, apply)
        local function step()
            local gui = ref.current
            if not gui then return end
            local m = UserInputService:GetMouseLocation()
            local fx = math.clamp((m.X - gui.AbsolutePosition.X) / gui.AbsoluteSize.X, 0, 1)
            local fy = math.clamp((m.Y - gui.AbsolutePosition.Y) / gui.AbsoluteSize.Y, 0, 1)
            apply(fx, fy)
        end
        step()
        local moveConn, upConn
        moveConn = UserInputService.InputChanged:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseMovement then step() end
        end)
        upConn = UserInputService.InputEnded:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                moveConn:Disconnect(); upConn:Disconnect()
            end
        end)
    end

    local function applySV(fx, fy)
        local t = hsvRef.current
        local nt = { h = t.h, s = fx, v = 1 - fy }
        setHsv(nt)
        announce(Color3.fromHSV(nt.h, nt.s, nt.v))
    end

    local function applyHue(fx)
        local t = hsvRef.current
        local nt = { h = fx, s = t.s, v = t.v }
        setHsv(nt)
        announce(Color3.fromHSV(nt.h, nt.s, nt.v))
    end

    local hueKeypoints = {}
    for i = 0, 6 do
        table.insert(hueKeypoints, ColorSequenceKeypoint.new(i / 6, Color3.fromHSV(i / 6, 1, 1)))
    end

    return React.createElement('Frame', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, open and 24 + 4 + 80 + 4 + 10 or 24),
        BackgroundTransparency = 1,
        Active = true,
    }, {
        Text = React.createElement('TextLabel', {
            Size = UDim2.new(1, -40, 0, 24),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Color',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Swatch = React.createElement(RoundedFrame, {
            Button = true,
            Color = color(),
            Radius = Theme.Layout.CornerSm,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, 0, 0, 4),
            Size = UDim2.fromOffset(28, 16),
            OnClick = function() setOpen(not open) end,
        }),
        Map = open and React.createElement('ImageButton', {
            Position = UDim2.fromOffset(0, 28),
            Size = UDim2.new(1, 0, 0, 80),
            BackgroundColor3 = Color3.fromHSV(hsv.h, 1, 1),
            BorderSizePixel = 0,
            AutoButtonColor = false,
            Image = SV_IMAGE,
            ref = mapRef,
            [React.Event.InputBegan] = function(_, io)
                if io.UserInputType == Enum.UserInputType.MouseButton1 then
                    drag(mapRef, applySV)
                end
            end,
        }, {
            Cursor = React.createElement('Frame', {
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(hsv.s, 1 - hsv.v),
                Size = UDim2.fromOffset(6, 6),
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0,
                Rotation = 45,
                ZIndex = 2,
            }),
        }) or nil,
        Hue = open and React.createElement('ImageButton', {
            Position = UDim2.fromOffset(0, 112),
            Size = UDim2.new(1, 0, 0, 10),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BorderSizePixel = 0,
            AutoButtonColor = false,
            ref = hueRef,
            [React.Event.InputBegan] = function(_, io)
                if io.UserInputType == Enum.UserInputType.MouseButton1 then
                    drag(hueRef, function(fx) applyHue(fx) end)
                end
            end,
        }, {
            Gradient = React.createElement('UIGradient', {
                Color = ColorSequence.new(hueKeypoints),
            }),
            Cursor = React.createElement('Frame', {
                AnchorPoint = Vector2.new(0.5, 0),
                Position = UDim2.fromScale(hsv.h, 0),
                Size = UDim2.new(0, 2, 1, 0),
                BackgroundColor3 = Color3.new(1, 1, 1),
                BorderSizePixel = 0,
                ZIndex = 2,
            }),
        }) or nil,
    })
end

return ColorPicker

--!nonstrict
-- Dropdown — single-select list that animates open/closed in place.
-- Registers into Store.Options under props.Flag.
-- ponytail: single-select only; add Multi when something needs it
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')
local Motion = require('core/Motion')
local Hooks = require('core/Hooks')

local ROW = 24
local MAX_ROWS = 4

-- props: { Text: string, Values: {string}, Default: string?, Flag: string?,
--          Callback: (string) -> ()?, LayoutOrder: number? }
local function Dropdown(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local values = props.Values or {}
    local value, setValue = React.useState(props.Default)
    local open, setOpen = React.useState(false)
    local valueRef = React.useRef(value)
    valueRef.current = value

    local rootRef = React.useRef(nil)
    local listRef = React.useRef(nil)
    local chevronRef = React.useRef(nil)
    local boxRef = React.useRef(nil)

    local hovered, _, handlers = Hooks.useInteractive()

    local listH = math.min(#values, MAX_ROWS) * ROW

    -- animate: chevron spin, list clip height + fade, whole-control height
    React.useEffect(function()
        local c = chevronRef.current
        if c then Motion.tween(c, Motion.Snappy, { Rotation = open and 180 or 0 }) end

        local list = listRef.current
        if list then
            Motion.tween(list, Motion.Smooth, {
                Size = UDim2.new(1, 0, 0, open and listH or 0),
                GroupTransparency = open and 0 or 1,
            })
        end
        local root = rootRef.current
        if root then
            Motion.tween(root, Motion.Smooth, {
                Size = UDim2.new(1, 0, 0, 44 + (open and listH + 4 or 0)),
            })
        end
    end, { open })

    React.useEffect(function()
        local box = boxRef.current
        if box then
            local prop = box:IsA('ImageLabel') and 'ImageColor3' or 'BackgroundColor3'
            Motion.tween(box, Motion.Snappy, {
                [prop] = hovered and Theme.Color.Outline or Theme.Color.Element,
            })
        end
    end, { hovered })

    local set = React.useCallback(function(v)
        setValue(v)
        setOpen(false)
        if props.Callback then Env.Library:SafeCall(props.Callback, v) end
        if props.Flag then Store:Fire(props.Flag, v) end
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Options[props.Flag] = {
            Type = 'Dropdown',
            Get = function() return valueRef.current end,
            Set = set,
        }
        return function() Store.Options[props.Flag] = nil end
    end, {})

    local rows = {
        Layout = React.createElement('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),
    }
    for i, v in ipairs(values) do
        rows['Row' .. i] = React.createElement('TextButton', {
            LayoutOrder = i,
            Size = UDim2.new(1, 0, 0, ROW),
            BackgroundTransparency = 1,
            FontFace = v == value and Theme.Face.Medium or Theme.Face.Regular,
            Text = '  ' .. tostring(v),
            TextColor3 = v == value and Theme.Color.Accent or Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
            [React.Event.Activated] = function() set(v) end,
        })
    end

    return React.createElement('Frame', {
        ref = rootRef,
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 44),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Active = true,
    }, {
        Text = React.createElement('TextLabel', {
            Size = UDim2.new(1, 0, 0, 14),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Dropdown',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Box = React.createElement(RoundedFrame, {
            ref = boxRef,
            Button = true,
            Color = Theme.Color.Element,
            Radius = Theme.Layout.CornerSm,
            Position = UDim2.fromOffset(0, 18),
            Size = UDim2.new(1, 0, 0, 26),
            Handlers = handlers,
            OnClick = function() setOpen(not open) end,
        }, {
            Current = React.createElement('TextLabel', {
                Position = UDim2.fromOffset(8, 0),
                Size = UDim2.new(1, -32, 1, 0),
                BackgroundTransparency = 1,
                FontFace = Theme.Face.Regular,
                Text = value and tostring(value) or '--',
                TextColor3 = value and Theme.Color.Text or Theme.Color.TextMuted,
                TextSize = Theme.Text.SizeSml,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
            Chevron = React.createElement('ImageLabel', {
                ref = chevronRef,
                AnchorPoint = Vector2.new(1, 0.5),
                Position = UDim2.new(1, -6, 0.5, 0),
                Size = UDim2.fromOffset(14, 14),
                BackgroundTransparency = 1,
                Image = Env.Icons.GetIcon('chevron-down'),
                ImageColor3 = Theme.Color.TextMuted,
            }),
        }),
        -- list always mounted; clipped by root, height + fade animated
        List = React.createElement('CanvasGroup', {
            ref = listRef,
            Position = UDim2.fromOffset(0, 48),
            Size = UDim2.new(1, 0, 0, 0),
            BackgroundColor3 = Theme.Color.ElementDim,
            BorderSizePixel = 0,
            GroupTransparency = 1,
        }, {
            Round = React.createElement('UICorner', {
                CornerRadius = UDim.new(0, Theme.Layout.CornerSm),
            }),
            Scroll = React.createElement('ScrollingFrame', {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                CanvasSize = UDim2.fromOffset(0, #values * ROW),
                ScrollBarThickness = 2,
                ScrollBarImageColor3 = Theme.Color.Outline,
            }, rows),
        }),
    })
end

return Dropdown

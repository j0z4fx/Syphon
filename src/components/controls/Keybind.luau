--!nonstrict
-- Keybind — click to rebind; captures next key or mouse button.
-- Registers into Store.Options under props.Flag.
local Env = require('core/env')
local RoundedFrame = require('components/RoundedFrame')

local UserInputService = game:GetService('UserInputService')

-- props: { Text: string, Default: string?, Flag: string?,
--          Callback: (string) -> ()?, LayoutOrder: number? }
local function Keybind(props)
    local React = Env.React
    local Theme = Env.Theme
    local Store = Env.Store

    local key, setKey = React.useState(props.Default or 'None')
    local listening, setListening = React.useState(false)
    local keyRef = React.useRef(key)
    keyRef.current = key

    local set = React.useCallback(function(k)
        setKey(k)
        setListening(false)
        if props.Callback then Env.Library:SafeCall(props.Callback, k) end
        if props.Flag then Store:Fire(props.Flag, k) end
    end, {})

    React.useEffect(function()
        if not props.Flag then return end
        Store.Options[props.Flag] = {
            Type = 'Keybind',
            Get = function() return keyRef.current end,
            Set = set,
        }
        return function() Store.Options[props.Flag] = nil end
    end, {})

    React.useEffect(function()
        if not listening then return end
        local conn = UserInputService.InputBegan:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.Keyboard then
                if io.KeyCode == Enum.KeyCode.Escape then
                    setListening(false)
                else
                    set(io.KeyCode.Name)
                end
            elseif io.UserInputType == Enum.UserInputType.MouseButton2 then
                set('MB2')
            end
        end)
        return function() conn:Disconnect() end
    end, { listening })

    return React.createElement('Frame', {
        LayoutOrder = props.LayoutOrder,
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Active = true,
    }, {
        Text = React.createElement('TextLabel', {
            Size = UDim2.new(1, -70, 1, 0),
            BackgroundTransparency = 1,
            FontFace = Theme.Face.Regular,
            Text = props.Text or 'Keybind',
            TextColor3 = Theme.Color.Text,
            TextSize = Theme.Text.SizeSml,
            TextXAlignment = Enum.TextXAlignment.Left,
        }),
        Chip = React.createElement(RoundedFrame, {
            Button = true,
            Color = listening and Theme.Color.ElementDim or Theme.Color.Element,
            Radius = Theme.Layout.CornerSm,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, 0, 0.5, 0),
            Size = UDim2.fromOffset(64, 20),
            OnClick = function() setListening(not listening) end,
        }, {
            Label = React.createElement('TextLabel', {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                FontFace = Theme.Face.Medium,
                Text = listening and '...' or key,
                TextColor3 = listening and Theme.Color.Accent or Theme.Color.TextMuted,
                TextSize = Theme.Text.SizeXs,
            }),
        }),
    })
end

return Keybind

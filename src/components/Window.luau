--!nonstrict
-- Window — blank draggable frame. 16:9 (800x450 default).
local Env = require('core/env')

local UserInputService = game:GetService('UserInputService')
local Players = game:GetService('Players')

local TOOLBAR_HEIGHT = 43 -- odd => true vertical center pixel

-- props: { Size: UDim2?, Position: UDim2?, Visible: boolean?, children: ... }
local function Window(props)
    local React = Env.React
    local Theme = Env.Theme

    local outerRef = React.useRef(nil)

    -- ponytail: whole-surface drag while window is blank; move to a title strip when one exists
    local onInput = React.useCallback(function(_, input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        local outer = outerRef.current
        if not outer then return end

        local startMouse = UserInputService:GetMouseLocation()
        local startPos = outer.Position

        local moveConn, upConn
        moveConn = UserInputService.InputChanged:Connect(function(io)
            if io.UserInputType ~= Enum.UserInputType.MouseMovement then return end
            local m = UserInputService:GetMouseLocation()
            outer.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + (m.X - startMouse.X),
                startPos.Y.Scale, startPos.Y.Offset + (m.Y - startMouse.Y)
            )
        end)
        upConn = UserInputService.InputEnded:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                moveConn:Disconnect()
                upConn:Disconnect()
            end
        end)
    end, {})

    return React.createElement('Frame', {
        ref = outerRef,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = props.Position or UDim2.fromScale(0.5, 0.5),
        Size = props.Size or UDim2.fromOffset(800, 450),
        BackgroundColor3 = Theme.Color.Background,
        BorderSizePixel = 0,
        Visible = props.Visible ~= false,
        [React.Event.InputBegan] = onInput,
    }, {
        Content = React.createElement('Frame', {
            Size = UDim2.new(1, 0, 1, -TOOLBAR_HEIGHT),
            BackgroundTransparency = 1,
        }, props.children),
        Toolbar = React.createElement('Frame', {
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, TOOLBAR_HEIGHT),
            BackgroundColor3 = Theme.Color.Surface,
            BorderSizePixel = 0,
        }, {
            Avatar = React.createElement('Frame', {
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.new(0, 8, 0.5, 0),
                Size = UDim2.fromOffset(31, 31),
                BackgroundColor3 = Theme.Color.Background,
                BorderSizePixel = 0,
            }, {
                Round = React.createElement('UICorner', {
                    CornerRadius = UDim.new(0.5, 0),
                }),
                Headshot = React.createElement('ImageLabel', {
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromOffset(29, 29),
                    BackgroundTransparency = 1,
                    Image = ('rbxthumb://type=AvatarHeadShot&id=%d&w=48&h=48')
                        :format(Players.LocalPlayer.UserId),
                }, {
                    Round = React.createElement('UICorner', {
                        CornerRadius = UDim.new(0.5, 0),
                    }),
                }),
            }),
            DisplayName = React.createElement('TextLabel', {
                Position = UDim2.new(0, 47, 0.5, -9),
                Size = UDim2.fromOffset(200, 9),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Font = Theme.Font,
                Text = Players.LocalPlayer.DisplayName,
                TextColor3 = Theme.Color.Text,
                TextSize = Theme.Text.Size,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
            Subtext = React.createElement('TextLabel', {
                Position = UDim2.new(0, 47, 0.5, 8),
                Size = UDim2.fromOffset(200, 9),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Font = Theme.Font,
                Text = 'Premium',
                TextColor3 = Theme.Color.TextMuted,
                TextSize = Theme.Text.SizeSml,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
        }),
    })
end

return Window

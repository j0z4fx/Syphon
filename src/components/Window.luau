--!nonstrict
-- Window — top-level draggable frame. 16:9 (800x450 default).
local Env = require('core/env')

local UserInputService = game:GetService('UserInputService')

local TITLE_HEIGHT = 25

-- props: { Title: string?, Size: UDim2?, Position: UDim2?, Visible: boolean?, children: ... }
local function Window(props)
    local React = Env.React
    local Theme = Env.Theme

    local outerRef = React.useRef(nil)

    -- drag: grab title strip, follow mouse until release
    local onTitleInput = React.useCallback(function(_, input)
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
        BorderColor3 = Theme.Color.Accent,
        BorderMode = Enum.BorderMode.Inset,
        Visible = props.Visible ~= false,
    }, {
        TitleBar = React.createElement('Frame', {
            Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
            BackgroundColor3 = Theme.Color.Surface,
            BorderSizePixel = 0,
            ZIndex = 2,
            [Env.React.Event.InputBegan] = onTitleInput,
        }, {
            Title = React.createElement('TextLabel', {
                Size = UDim2.new(1, -14, 1, 0),
                Position = UDim2.fromOffset(7, 0),
                BackgroundTransparency = 1,
                Font = Theme.Font,
                Text = props.Title or 'Syphon',
                TextColor3 = Theme.Color.Text,
                TextSize = Theme.Text.Size,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
            Accent = React.createElement('Frame', {
                Position = UDim2.new(0, 0, 1, -1),
                Size = UDim2.new(1, 0, 0, 1),
                BackgroundColor3 = Theme.Color.Accent,
                BorderSizePixel = 0,
            }),
        }),
        Content = React.createElement('Frame', {
            Position = UDim2.fromOffset(0, TITLE_HEIGHT),
            Size = UDim2.new(1, 0, 1, -TITLE_HEIGHT),
            BackgroundTransparency = 1,
        }, props.children),
    })
end

return Window

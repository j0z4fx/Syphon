--!nonstrict
-- Window — blank draggable frame. 16:9 (800x450 default).
local Env = require('core/env')

local UserInputService = game:GetService('UserInputService')

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
    }, props.children)
end

return Window

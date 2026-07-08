--!nonstrict
-- Pointer helpers. Uses LocalPlayer:GetMouse() .X/.Y which are inset-excluded,
-- matching AbsolutePosition of an IgnoreGuiInset=false ScreenGui on every client
-- (avoids the GetMouseLocation/inset mismatch that varies by executor).
local UserInputService = game:GetService('UserInputService')
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()

local Drag = {}

-- Fraction (0..1 each axis) of the mouse within `frame`, clamped.
function Drag.fraction(frame)
    local ap, as = frame.AbsolutePosition, frame.AbsoluteSize
    return Vector2.new(
        as.X > 0 and math.clamp((Mouse.X - ap.X) / as.X, 0, 1) or 0,
        as.Y > 0 and math.clamp((Mouse.Y - ap.Y) / as.Y, 0, 1) or 0
    )
end

-- Begin a drag: calls onFraction(Vector2) now and on every mouse move until
-- the left button releases. Returns nothing; self-cleans.
function Drag.begin(frame, onFraction)
    onFraction(Drag.fraction(frame))
    local moveConn, upConn
    moveConn = UserInputService.InputChanged:Connect(function(io)
        if io.UserInputType == Enum.UserInputType.MouseMovement then
            onFraction(Drag.fraction(frame))
        end
    end)
    upConn = UserInputService.InputEnded:Connect(function(io)
        if io.UserInputType == Enum.UserInputType.MouseButton1 then
            moveConn:Disconnect()
            upConn:Disconnect()
        end
    end)
end

return Drag

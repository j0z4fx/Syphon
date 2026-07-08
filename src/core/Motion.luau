--!nonstrict
-- Motion — tween presets + helper, ported from NeverLose's animation timings.
local TweenService = game:GetService('TweenService')

local Motion = {
    Fast   = TweenInfo.new(0.05),
    Manual = TweenInfo.new(0.1),
    Slowy  = TweenInfo.new(0.175),
    VSlow  = TweenInfo.new(0.5, Enum.EasingStyle.Quint),
}

-- Tween `props` on `instance`; returns the tween. Safe against dead instances.
function Motion.tween(instance, info, props)
    if not instance then return end
    local ok, tween = pcall(function()
        return TweenService:Create(instance, info or Motion.Slowy, props)
    end)
    if not ok then return end
    tween:Play()
    return tween
end

return Motion

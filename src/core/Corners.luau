--!nonstrict
-- Corner engine — draws anti-aliased rounded-rect images at runtime with
-- EditableImage (4x4 supersampled alpha), served as 9-slice props so any
-- element gets crisp corners instead of Roblox's aliased UICorner.
-- Falls back to nil when EditableImage is unavailable; callers then use UICorner.
local AssetService = game:GetService('AssetService')

local SUPER = 4 -- supersample grid per pixel edge

local Corners = {}
local cache = {}
local available = nil

-- fraction of pixel (px,py) covered by a rounded square of size s, radius r
local function coverage(px, py, s, r)
    local hits = 0
    for sy = 0, SUPER - 1 do
        for sx = 0, SUPER - 1 do
            local x = px + (sx + 0.5) / SUPER
            local y = py + (sy + 0.5) / SUPER
            local cx = x < r and r or (x > s - r and s - r or nil)
            local cy = y < r and r or (y > s - r and s - r or nil)
            if cx and cy then
                local dx, dy = x - cx, y - cy
                if dx * dx + dy * dy <= r * r then hits += 1 end
            else
                hits += 1
            end
        end
    end
    return hits / (SUPER * SUPER)
end

local function build(radius)
    local s = radius * 2 + 2 -- 2px straight run in the middle for slicing
    local img = AssetService:CreateEditableImage({ Size = Vector2.new(s, s) })
    local buf = buffer.create(s * s * 4)
    for y = 0, s - 1 do
        for x = 0, s - 1 do
            local a = coverage(x, y, s, radius)
            local i = (y * s + x) * 4
            buffer.writeu8(buf, i, 255)
            buffer.writeu8(buf, i + 1, 255)
            buffer.writeu8(buf, i + 2, 255)
            buffer.writeu8(buf, i + 3, math.floor(a * 255 + 0.5))
        end
    end
    img:WritePixelsBuffer(Vector2.zero, Vector2.new(s, s), buf)
    return {
        ImageContent = Content.fromObject(img),
        SliceCenter = Rect.new(radius + 1, radius + 1, radius + 1, radius + 1),
    }
end

local function probe()
    if available ~= nil then return available end
    local ok = pcall(function()
        local slice = build(2)
        local test = Instance.new('ImageLabel')
        test.ImageContent = slice.ImageContent
        test:Destroy()
    end)
    available = ok
    return ok
end

-- Returns { ImageContent, SliceCenter } for the radius, or nil (use UICorner).
function Corners.get(radius)
    if radius <= 0 or not probe() then return nil end
    if not cache[radius] then
        local ok, slice = pcall(build, radius)
        cache[radius] = ok and slice or false
    end
    return cache[radius] or nil
end

function Corners.isAvailable()
    return probe()
end

return Corners

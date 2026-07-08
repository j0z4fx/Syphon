--!nonstrict
-- Public API surface. Owns React roots and their protected ScreenGui hosts.
-- Rendering/window construction lands here later; for now it exposes the
-- mount/unmount lifecycle and holds the resolved component + runtime tables.
local Env = require('core/env')

local cloneref = cloneref or clonereference or function(x) return x end

local Library = {
    _name  = 'Syphon',
    _roots = {}, -- { root = ReactRoot, gui = ScreenGui }
}

-- Random instance names so the gui doesn't grep as "Syphon" (NeverLose-style).
function Library.RandomString()
    local s = ''
    for _ = 1, math.random(8, 14) do
        s ..= string.char(math.random(97, 122))
    end
    return s
end

-- Create a protected ScreenGui + inner container the renderer can fully own
-- (react-lua takes ownership of the instance handed to createRoot).
local function makeHost()
    local gui = Instance.new('ScreenGui')
    gui.Name = Library.RandomString()
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    -- IgnoreGuiInset=false so AbsolutePosition is inset-excluded, matching
    -- LocalPlayer:GetMouse() .X/.Y — the environment-independent pairing.

    pcall(function()
        if syn and syn.protect_gui then syn.protect_gui(gui) end
        if protectgui then protectgui(gui) end
    end)
    gui.Parent = (gethui and gethui())
        or (get_hidden_gui and get_hidden_gui())
        or cloneref(game:GetService('CoreGui'))

    local container = Instance.new('Folder')
    container.Name = Library.RandomString()
    container.Parent = gui

    return gui, container
end

-- Run a user callback without letting its errors kill the render.
function Library:SafeCall(fn, ...)
    if type(fn) ~= 'function' then return end
    local ok, err = pcall(fn, ...)
    if not ok then
        warn('[Syphon] callback error: ' .. tostring(err))
    end
end

-- Mount a React element and return its root handle.
function Library:Mount(element, name)
    assert(Env.ReactRoblox, 'Syphon: ' .. (self.Runtime and self.Runtime.reason or 'no React runtime'))

    local gui, container = makeHost()
    local root = Env.ReactRoblox.createRoot(container)
    root:render(element)

    local handle = { root = root, gui = gui }
    table.insert(self._roots, handle)
    return handle
end

-- Tear everything down: unmount roots, destroy hosts, clear globals.
function Library:Unload()
    for i = #self._roots, 1, -1 do
        local handle = self._roots[i]
        pcall(function() handle.root:unmount() end)
        pcall(function() handle.gui:Destroy() end)
        self._roots[i] = nil
    end
    getgenv().Syphon = nil
end

return Library

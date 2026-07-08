--!nonstrict
-- Syphon UI :: loader / bootstrap
-- ---------------------------------------------------------------------------
-- Single entry point. Downloads every module listed in manifest.luau into a
-- protected container, wires up an internal require(), then hands back the
-- assembled Library.
--
--   local Syphon = loadstring(game:HttpGet(
--       'https://raw.githubusercontent.com/j0z4fx/Syphon/master/src/loader.luau'))()
--
-- The React runtime (React + ReactRoblox) is NOT bundled here. Drop the two
-- prebuilt bundles into packages/ (see packages/README.md) or inject them via
-- getgenv().SyphonReact / getgenv().SyphonReactRoblox before loading.
-- ---------------------------------------------------------------------------

local Config = {
    Owner  = 'j0z4fx',
    Repo   = 'Syphon',
    Branch = 'master',
    Root   = 'src/',
}

local BASE = ('https://raw.githubusercontent.com/%s/%s/%s/%s')
    :format(Config.Owner, Config.Repo, Config.Branch, Config.Root)

-- Cache-bust so a fresh push is picked up immediately during development.
local function url(path)
    return ('%s%s?cb=%d'):format(BASE, path, math.random(1, 1e9))
end

local function httpGet(path)
    local ok, body = pcall(function() return game:HttpGet(url(path)) end)
    assert(ok and type(body) == 'string' and #body > 0,
        ('Syphon loader: failed to fetch %q (%s)'):format(path, tostring(body)))
    return body
end

-- Protected, hidden folder that holds the downloaded ModuleScripts.
local Container = Instance.new('Folder')
Container.Name = 'Syphon'
pcall(function()
    Container.Parent = (gethui and gethui())
        or (get_hidden_gui and get_hidden_gui())
        or game:GetService('CoreGui')
end)
if not Container.Parent then
    Container.Parent = game:GetService('CoreGui')
end

-- 1. Fetch the manifest (list of module names, no extension).
local manifest = (function()
    local src = httpGet('manifest.luau')
    local fn = assert(loadstring(src, '=Syphon/manifest'))
    return fn()
end)()

-- 2. Fetch every module source once.
local Sources = {}
for _, name in ipairs(manifest) do
    local src = httpGet(name .. '.luau')
    Sources[name] = src

    local holder = Instance.new('ModuleScript')
    holder.Name = name:gsub('/', '.')
    pcall(function() holder.Source = src end) -- best-effort; some executors block .Source
    holder.Parent = Container
end

-- 3. Internal require(): loadstring the cached source once, memoize the result.
local Cache = {}
local require
require = function(name)
    name = tostring(name):gsub('^%./', '')

    if Cache[name] ~= nil then
        return Cache[name]
    end

    local src = Sources[name]
    assert(src, 'Syphon loader: unknown module ' .. name)

    local fn, err = loadstring(src, '=Syphon/' .. name)
    assert(fn, ('Syphon loader: compile error in %q: %s'):format(name, tostring(err)))

    local env = setmetatable({ require = require }, { __index = getfenv() })
    setfenv(fn, env)

    local result = fn()
    Cache[name] = (result == nil) and true or result
    return Cache[name]
end

local Library = require('init')
Library.Loader = { require = require, container = Container, config = Config }

return Library

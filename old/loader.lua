--!nonstrict
-- Syphon UI loader.
-- Downloads every module from the repo into a protected CoreGui folder,
-- then wires up an internal require() so the modules can reference each other.
--
-- Usage:
--   local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/j0z4fx/Syphon/master/src/loader.lua'))()
--   -- addons (optional):
--   local SaveManager  = Library.LoadModule('addons/SaveManager')
--   local ThemeManager = Library.LoadModule('addons/ThemeManager')

local BASE = 'https://raw.githubusercontent.com/j0z4fx/Syphon/master/src/'

-- Every module the loader knows about (path without the .luau extension).
local MODULES = {
    'core',
    'ui',
    'window',
    'init',
    'components/label',
    'components/button',
    'components/divider',
    'components/input',
    'components/toggle',
    'components/slider',
    'components/dropdown',
    'components/colorpicker',
    'components/keypicker',
    'components/dependencybox',
    'addons/SaveManager',
    'addons/ThemeManager',
};

-- Protected, hidden folder that holds the downloaded sources.
local Container = Instance.new('Folder');
Container.Name = 'Syphon';
pcall(function()
    Container.Parent = (gethui and gethui())
        or (get_hidden_gui and get_hidden_gui())
        or game:GetService('CoreGui');
end);
if not Container.Parent then
    Container.Parent = game:GetService('CoreGui');
end

local HttpGet = function(url)
    if syn and syn.request then
        return game:HttpGet(url, true);
    end
    return game:HttpGet(url);
end

-- Fetch each module once and stash the source (plus a ModuleScript holder for inspection).
local Sources = {};
for _, Name in ipairs(MODULES) do
    local ok, src = pcall(HttpGet, BASE .. Name .. '.luau');
    assert(ok and type(src) == 'string' and #src > 0,
        ('Syphon loader: failed to download %q (%s)'):format(Name, tostring(src)));

    Sources[Name] = src;

    local Holder = Instance.new('ModuleScript');
    Holder.Name = Name:gsub('/', '.');
    pcall(function() Holder.Source = src end); -- best-effort; some executors block .Source
    Holder.Parent = Container;
end

-- Internal require: loadstring the cached source once, cache the result.
local Cache = {};
local require;
require = function(Name)
    Name = tostring(Name):gsub('^%./', '');

    if Cache[Name] ~= nil then
        return Cache[Name];
    end

    local src = Sources[Name];
    assert(src, 'Syphon loader: unknown module ' .. Name);

    local fn, err = loadstring(src, '=Syphon/' .. Name);
    assert(fn, ('Syphon loader: compile error in %q: %s'):format(Name, tostring(err)));

    local env = setmetatable({ require = require }, { __index = getfenv() });
    setfenv(fn, env);

    local result = fn();
    Cache[Name] = (result == nil) and true or result;
    return Cache[Name];
end

local Library = require('init');

-- Let user scripts pull addons through the same protected loader.
Library.LoadModule = require;

return Library

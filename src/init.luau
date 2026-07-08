--!nonstrict
-- Assembles the Library: resolves the React runtime, wires shared env, loads
-- every registered component, and returns the public Library table.
local Env     = require('core/env')
local runtime = require('bootstrap/runtime')

Env.React       = runtime.React
Env.ReactRoblox = runtime.ReactRoblox
Env.Theme       = require('core/Theme')
Env.Store       = require('core/Store')

local Library = require('core/Library')
Env.Library   = Library

Library.React       = runtime.React
Library.ReactRoblox = runtime.ReactRoblox
Library.Runtime     = runtime
Library.Theme       = Env.Theme
Library.Store       = Env.Store

-- Resolve components from the registry. Drop a file + add a registry line to
-- extend the library; nothing here needs to change.
local registry = require('components/registry')
Library.Components = {}
for _, entry in ipairs(registry) do
    Library.Components[entry.name] = require(entry.path)
end

getgenv().Syphon = Library
return Library

--!nonstrict
-- Resolves the React runtime for an executor environment.
--
-- react-lua ships as a large graph of ModuleScripts with relative requires,
-- which an executor cannot load off disk. So we consume prebuilt single-file
-- bundles instead. Resolution order:
--   1. getgenv().SyphonReact / getgenv().SyphonReactRoblox   (caller-injected)
--   2. packages/React + packages/ReactRoblox                 (vendored bundles)
--
-- If neither resolves, the library still loads (so the tree is inspectable),
-- but Library:Mount() will refuse to render until a runtime is present.

local runtime = {
    React       = nil,
    ReactRoblox = nil,
    ok          = false,
    reason      = '',
}

local function fromGetgenv()
    local R  = getgenv().SyphonReact
    local RR = getgenv().SyphonReactRoblox
    if R and RR then
        return R, RR
    end
end

local function fromPackages()
    -- Combined bundle returns { React = ..., ReactRoblox = ... } so both share
    -- one React instance (required for hooks/context to work across them).
    local ok, bundle = pcall(require, 'packages/ReactLua')
    if ok and type(bundle) == 'table'
        and type(bundle.React) == 'table' and type(bundle.ReactRoblox) == 'table' then
        return bundle.React, bundle.ReactRoblox
    end
end

local React, ReactRoblox = fromGetgenv()
if not React then
    React, ReactRoblox = fromPackages()
end

if React and ReactRoblox then
    runtime.React       = React
    runtime.ReactRoblox = ReactRoblox
    runtime.ok          = true
else
    runtime.reason = 'React runtime not installed — see packages/README.md '
        .. 'or set getgenv().SyphonReact / getgenv().SyphonReactRoblox'
end

return runtime

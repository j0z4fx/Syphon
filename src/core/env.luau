--!nonstrict
-- Shared runtime environment. A single cached table every module can import to
-- reach React, the renderer, theme tokens, and global state without threading
-- them through call sites. Fields are populated by init.luau at load time, so
-- read them at call time (inside components), not at module top level.
return {
    React       = nil, -- React (createElement, hooks, ...)
    ReactRoblox = nil, -- renderer (createRoot, ...)
    Theme       = nil, -- core/Theme tokens
    Store       = nil, -- core/Store global state
    Library     = nil, -- public Library table
}

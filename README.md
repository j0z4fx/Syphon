# Syphon

A Roblox UI library built on [react-lua](https://github.com/jsdotlua/react-lua),
loaded at runtime by an executor.

```lua
local Syphon = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/j0z4fx/Syphon/master/src/loader.luau'))()
```

> Runtime scaffold only — components are stubs, no UI yet. See the tree below.

## How it loads

The executor runs one file, [`src/loader.luau`](src/loader.luau). It reads
[`src/manifest.luau`](src/manifest.luau), downloads every listed module into a
protected `CoreGui` folder, and exposes an internal `require()` (loadstring +
cache) so modules can reference each other. It then requires `init` and returns
the `Library`.

The React runtime is **not** bundled in the loader — drop the prebuilt bundles
into [`src/packages/`](src/packages) or inject them via `getgenv()`. See
[`src/packages/README.md`](src/packages/README.md).

## File tree

```
src/
├── loader.luau            entry: manifest fetch, protected require(), returns Library
├── manifest.luau          list of every module to download (add a file → add a line)
├── init.luau              resolves runtime, wires env, loads registered components
│
├── bootstrap/
│   └── runtime.luau       resolves React + ReactRoblox (getgenv → packages)
│
├── core/
│   ├── env.luau           shared { React, ReactRoblox, Theme, Store, Library }
│   ├── Theme.luau         design tokens (colors, fonts, layout) — data only
│   ├── Store.luau         global Toggles/Options state + subscribe
│   └── Library.luau       public API: Mount / Unload, owns React roots
│
├── components/
│   ├── registry.luau      the expansion point: name → module path
│   ├── Window.luau        layout: draggable host + tabs
│   ├── Tab.luau           layout: page of groupboxes
│   ├── Groupbox.luau      layout: titled control stack
│   └── controls/
│       ├── Button.luau        Toggle.luau      Slider.luau
│       ├── Dropdown.luau      Input.luau       Keybind.luau
│       └── ColorPicker.luau   Label.luau       Divider.luau
│
└── packages/
    ├── README.md          how to supply the React runtime
    ├── React.luau         (placeholder) prebuilt React bundle
    └── ReactRoblox.luau   (placeholder) prebuilt renderer bundle
```

## Adding a control

1. Create `src/components/controls/Foo.luau` (copy an existing stub — same contract:
   `local function Foo(props) ... return element end; return Foo`).
2. Add its name/path to `src/components/registry.luau`.
3. Add its module path to `src/manifest.luau`.

That's the whole surface. Controls reach React/Theme/Store through
`require('core/env')`; nothing else needs to change.

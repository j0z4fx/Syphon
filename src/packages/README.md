# packages/ — React runtime

Syphon renders with [jsdotlua/react-lua](https://github.com/jsdotlua/react-lua).
In a normal Roblox/Rojo project you'd pull `React` and `ReactRoblox` via Wally.
An **executor cannot** `require` that module graph off disk, so we consume two
**prebuilt single-file bundles** instead.

## Provide the runtime (pick one)

**A. Vendored bundles (default).** Replace `React.luau` and `ReactRoblox.luau`
in this folder with bundled builds where every relative `require` is inlined and
the module `return`s the package table. Produce them with
[darklua](https://github.com/seaofvoices/darklua)'s bundle command against the
`React` and `ReactRoblox` packages of react-lua.

**B. Runtime injection.** Set the globals before loading Syphon:

```lua
getgenv().SyphonReact       = <React table>
getgenv().SyphonReactRoblox = <ReactRoblox table>
local Syphon = loadstring(game:HttpGet('.../src/loader.luau'))()
```

Resolution order lives in [`bootstrap/runtime.luau`](../bootstrap/runtime.luau):
`getgenv()` first, then these vendored bundles. If neither resolves, the library
still loads (so the tree is inspectable) but `Library:Mount()` refuses to render.

--!nonstrict
-- Syphon demo — one of each control, in groupboxes, across the 3-column tab.
local Syphon = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/j0z4fx/Syphon/master/src/loader.luau'))()

-- warm the icon set before mounting (first fetch yields; render must not)
Syphon.Icons.GetIcon('house')
Syphon.Icons.GetIcon('users')
Syphon.Icons.GetIcon('settings')
Syphon.Icons.GetIcon('chevron-down')

local React = Syphon.React
local C = Syphon.Components
local e = React.createElement

local demoTab = e(C.Tab, {
    Column1 = {
        Combat = e(C.Groupbox, { Name = 'Combat', LayoutOrder = 1 }, {
            Enable = e(C.Toggle, {
                LayoutOrder = 1,
                Text = 'Enable Aim Assist',
                Default = true,
                Flag = 'AimEnabled',
                Callback = function(v) print('[demo] toggle:', v) end,
            }),
            Smooth = e(C.Slider, {
                LayoutOrder = 2,
                Text = 'Smoothness',
                Min = 0, Max = 100, Default = 35, Rounding = 0, Suffix = '%',
                Flag = 'Smoothness',
                Callback = function(v) print('[demo] slider:', v) end,
            }),
            Bind = e(C.Keybind, {
                LayoutOrder = 3,
                Text = 'Toggle Key',
                Default = 'Q',
                Flag = 'AimKey',
                Callback = function(k) print('[demo] keybind:', k) end,
            }),
        }),
    },
    Column2 = {
        Visuals = e(C.Groupbox, { Name = 'Visuals', LayoutOrder = 1 }, {
            Mode = e(C.Dropdown, {
                LayoutOrder = 1,
                Text = 'ESP Mode',
                Values = { 'Box', 'Corner', 'Skeleton', 'Chams' },
                Default = 'Box',
                Flag = 'EspMode',
                Callback = function(v) print('[demo] dropdown:', v) end,
            }),
            Color = e(C.ColorPicker, {
                LayoutOrder = 2,
                Text = 'ESP Color',
                Default = Color3.fromRGB(0, 85, 255),
                Flag = 'EspColor',
                Callback = function(c) print('[demo] color:', c) end,
            }),
            Sep = e(C.Divider, { LayoutOrder = 3 }),
            Note = e(C.Label, {
                LayoutOrder = 4,
                Text = 'Labels wrap when the text runs longer than one row.',
                Muted = true,
            }),
        }),
    },
    Column3 = {
        Misc = e(C.Groupbox, { Name = 'Misc', LayoutOrder = 1 }, {
            Name = e(C.Input, {
                LayoutOrder = 1,
                Text = 'Player Name',
                Placeholder = 'type here...',
                Flag = 'TargetName',
                Callback = function(v) print('[demo] input:', v) end,
            }),
            Act = e(C.Button, {
                LayoutOrder = 2,
                Text = 'Run Action',
                Callback = function() print('[demo] button clicked') end,
            }),
        }),
    },
})

local playersTab = e(C.Tab, {
    Column1 = {
        Info = e(C.Groupbox, { Name = 'Players', LayoutOrder = 1 }, {
            Note = e(C.Label, { LayoutOrder = 1, Text = 'Player tools land here.', Muted = true }),
        }),
    },
})

local settingsTab = e(C.Tab, {
    Column1 = {
        Config = e(C.Groupbox, { Name = 'Settings', LayoutOrder = 1 }, {
            Note = e(C.Label, { LayoutOrder = 1, Text = 'Library settings land here.', Muted = true }),
        }),
    },
})

local handle = Syphon:Mount(e(C.Window, {
    Tabs = {
        { Name = 'Home',     Icon = 'house',    Content = demoTab },
        { Name = 'Players',  Icon = 'users',    Content = playersTab },
        { Name = 'Settings', Icon = 'settings', Content = settingsTab },
    },
}), 'SyphonDemo')
getgenv().SyphonHandle = handle
print('[Syphon] demo mounted')

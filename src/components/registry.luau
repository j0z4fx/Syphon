--!nonstrict
-- The expansion point. Every component the Library exposes is listed once here.
-- To add a control: create components/controls/Foo.luau, then add a line below.
-- `kind` groups them ('layout' for structural, 'control' for inputs) so tooling
-- and a future auto-builder can iterate them.
return {
    { name = 'RoundedFrame', path = 'components/RoundedFrame',     kind = 'layout'  },
    { name = 'Window',      path = 'components/Window',            kind = 'layout'  },
    { name = 'TabButton',   path = 'components/TabButton',         kind = 'layout'  },
    { name = 'Tab',         path = 'components/Tab',               kind = 'layout'  },
    { name = 'Groupbox',    path = 'components/Groupbox',          kind = 'layout'  },

    { name = 'Button',      path = 'components/controls/Button',      kind = 'control' },
    { name = 'Toggle',      path = 'components/controls/Toggle',      kind = 'control' },
    { name = 'Slider',      path = 'components/controls/Slider',      kind = 'control' },
    { name = 'Dropdown',    path = 'components/controls/Dropdown',    kind = 'control' },
    { name = 'Input',       path = 'components/controls/Input',       kind = 'control' },
    { name = 'Keybind',     path = 'components/controls/Keybind',     kind = 'control' },
    { name = 'ColorPicker', path = 'components/controls/ColorPicker', kind = 'control' },
    { name = 'Label',       path = 'components/controls/Label',       kind = 'control' },
    { name = 'Divider',     path = 'components/controls/Divider',     kind = 'control' },
}

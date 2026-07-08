--!nonstrict
-- Every module the loader must download, in no particular order (require()
-- resolves dependencies lazily). Add a file here when you add a file anywhere.
--
-- Names are repo-relative to src/ and carry no extension.
return {
    'init',

    'bootstrap/runtime',

    'core/env',
    'core/Theme',
    'core/Store',
    'core/Library',

    'components/registry',
    'components/Window',
    'components/Tab',
    'components/Groupbox',

    'components/controls/Button',
    'components/controls/Toggle',
    'components/controls/Slider',
    'components/controls/Dropdown',
    'components/controls/Input',
    'components/controls/Keybind',
    'components/controls/ColorPicker',
    'components/controls/Label',
    'components/controls/Divider',

    'packages/ReactLua',
}

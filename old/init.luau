--!nonstrict
-- Assembles every module into the Library and returns it.
local Library = require('core')

require('ui')

require('components/label')
require('components/button')
require('components/divider')
require('components/input')
require('components/toggle')
require('components/slider')
require('components/dropdown')
require('components/colorpicker')
require('components/keypicker')
require('components/dependencybox')

require('window')

getgenv().Library = Library
return Library

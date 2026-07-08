--!nonstrict
local Library = require('core')

local Players = game:GetService('Players')
local InputService = game:GetService('UserInputService')
local TextService = game:GetService('TextService')
local RunService = game:GetService('RunService')

local RenderStepped = RunService.RenderStepped
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local ScreenGui = Library.ScreenGui
local Toggles = Library.Toggles
local Options = Library.Options
local BaseAddons = Library.BaseAddons
local BaseGroupbox = Library.BaseGroupbox
local GetPlayersString = Library.GetPlayersString
local GetTeamsString = Library.GetTeamsString

local Funcs = Library.GroupboxFuncs

function Funcs:AddDependencyBox()
    local Depbox = {
        Dependencies = {};
    };
    
    local Groupbox = self;
    local Container = Groupbox.Container;

    local Holder = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Size = UDim2.new(1, 0, 0, 0);
        Visible = false;
        Parent = Container;
    });

    local Frame = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Size = UDim2.new(1, 0, 1, 0);
        Visible = true;
        Parent = Holder;
    });

    local Layout = Library:Create('UIListLayout', {
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = Frame;
    });

    function Depbox:Resize()
        Holder.Size = UDim2.new(1, 0, 0, Layout.AbsoluteContentSize.Y);
        Groupbox:Resize();
    end;

    Layout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
        Depbox:Resize();
    end);

    Holder:GetPropertyChangedSignal('Visible'):Connect(function()
        Depbox:Resize();
    end);

    function Depbox:Update()
        for _, Dependency in next, Depbox.Dependencies do
            local Elem = Dependency[1];
            local Value = Dependency[2];

            if Elem.Type == 'Toggle' and Elem.Value ~= Value then
                Holder.Visible = false;
                Depbox:Resize();
                return;
            end;
        end;

        Holder.Visible = true;
        Depbox:Resize();
    end;

    function Depbox:SetupDependencies(Dependencies)
        for _, Dependency in next, Dependencies do
            assert(type(Dependency) == 'table', 'SetupDependencies: Dependency is not of type `table`.');
            assert(Dependency[1], 'SetupDependencies: Dependency is missing element argument.');
            assert(Dependency[2] ~= nil, 'SetupDependencies: Dependency is missing value argument.');
        end;

        Depbox.Dependencies = Dependencies;
        Depbox:Update();
    end;

    Depbox.Container = Frame;

    setmetatable(Depbox, BaseGroupbox);

    table.insert(Library.DependencyBoxes, Depbox);

    return Depbox;
end;

return Funcs

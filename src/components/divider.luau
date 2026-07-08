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

function Funcs:AddDivider()
    local Groupbox = self;
    local Container = self.Container

    local Divider = {
        Type = 'Divider',
    }

    Groupbox:AddBlank(2);
    local DividerOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        Size = UDim2.new(1, -4, 0, 5);
        ZIndex = 5;
        Parent = Container;
    });

    local DividerInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 6;
        Parent = DividerOuter;
    });

    Library:AddToRegistry(DividerOuter, {
        BorderColor3 = 'Black';
    });

    Library:AddToRegistry(DividerInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    Groupbox:AddBlank(9);
    Groupbox:Resize();
end

return Funcs

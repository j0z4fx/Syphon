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

function Funcs:AddToggle(Idx, Info)
    assert(Info.Text, 'AddInput: Missing `Text` string.')

    local Toggle = {
        Value = Info.Default or false;
        Type = 'Toggle';

        Callback = Info.Callback or function(Value) end;
        Addons = {},
        Risky = Info.Risky,
    };

    local Groupbox = self;
    local Container = Groupbox.Container;

    local ToggleOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        Size = UDim2.new(0, 13, 0, 13);
        ZIndex = 5;
        Parent = Container;
    });

    Library:AddToRegistry(ToggleOuter, {
        BorderColor3 = 'Black';
    });

    local ToggleInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 6;
        Parent = ToggleOuter;
    });

    Library:AddToRegistry(ToggleInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    local ToggleLabel = Library:CreateLabel({
        Size = UDim2.new(0, 216, 1, 0);
        Position = UDim2.new(1, 6, 0, 0);
        TextSize = 14;
        Text = Info.Text;
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 6;
        Parent = ToggleInner;
    });

    Library:Create('UIListLayout', {
        Padding = UDim.new(0, 4);
        FillDirection = Enum.FillDirection.Horizontal;
        HorizontalAlignment = Enum.HorizontalAlignment.Right;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = ToggleLabel;
    });

    local ToggleRegion = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Size = UDim2.new(0, 170, 1, 0);
        ZIndex = 8;
        Parent = ToggleOuter;
    });

    Library:OnHighlight(ToggleRegion, ToggleOuter,
        { BorderColor3 = 'AccentColor' },
        { BorderColor3 = 'Black' }
    );

    function Toggle:UpdateColors()
        Toggle:Display();
    end;

    if type(Info.Tooltip) == 'string' then
        Library:AddToolTip(Info.Tooltip, ToggleRegion)
    end

    function Toggle:Display()
        ToggleInner.BackgroundColor3 = Toggle.Value and Library.AccentColor or Library.MainColor;
        ToggleInner.BorderColor3 = Toggle.Value and Library.AccentColorDark or Library.OutlineColor;

        Library.RegistryMap[ToggleInner].Properties.BackgroundColor3 = Toggle.Value and 'AccentColor' or 'MainColor';
        Library.RegistryMap[ToggleInner].Properties.BorderColor3 = Toggle.Value and 'AccentColorDark' or 'OutlineColor';
    end;

    function Toggle:OnChanged(Func)
        Toggle.Changed = Func;
        Func(Toggle.Value);
    end;

    function Toggle:SetValue(Bool)
        Bool = (not not Bool);

        Toggle.Value = Bool;
        Toggle:Display();

        for _, Addon in next, Toggle.Addons do
            if Addon.Type == 'KeyPicker' and Addon.SyncToggleState then
                Addon.Toggled = Bool
                Addon:Update()
            end
        end

        Library:SafeCallback(Toggle.Callback, Toggle.Value);
        Library:SafeCallback(Toggle.Changed, Toggle.Value);
        Library:UpdateDependencyBoxes();
    end;

    ToggleRegion.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
            Toggle:SetValue(not Toggle.Value) -- Why was it not like this from the start?
            Library:AttemptSave();
        end;
    end);

    if Toggle.Risky then
        Library:RemoveFromRegistry(ToggleLabel)
        ToggleLabel.TextColor3 = Library.RiskColor
        Library:AddToRegistry(ToggleLabel, { TextColor3 = 'RiskColor' })
    end

    Toggle:Display();
    Groupbox:AddBlank(Info.BlankSize or 5 + 2);
    Groupbox:Resize();

    Toggle.TextLabel = ToggleLabel;
    Toggle.Container = Container;
    setmetatable(Toggle, BaseAddons);

    Toggles[Idx] = Toggle;

    Library:UpdateDependencyBoxes();

    return Toggle;
end;

return Funcs

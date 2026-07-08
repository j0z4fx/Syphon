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

function Funcs:AddLabel(Text, DoesWrap)
    local Label = {};

    local Groupbox = self;
    local Container = Groupbox.Container;

    local TextLabel = Library:CreateLabel({
        Size = UDim2.new(1, -4, 0, 15);
        TextSize = 14;
        Text = Text;
        TextWrapped = DoesWrap or false,
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 5;
        Parent = Container;
    });

    if DoesWrap then
        local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
        TextLabel.Size = UDim2.new(1, -4, 0, Y)
    else
        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 4);
            FillDirection = Enum.FillDirection.Horizontal;
            HorizontalAlignment = Enum.HorizontalAlignment.Right;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = TextLabel;
        });
    end

    Label.TextLabel = TextLabel;
    Label.Container = Container;

    function Label:SetText(Text)
        TextLabel.Text = Text

        if DoesWrap then
            local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
            TextLabel.Size = UDim2.new(1, -4, 0, Y)
        end

        Groupbox:Resize();
    end

    if (not DoesWrap) then
        setmetatable(Label, BaseAddons);
    end

    Groupbox:AddBlank(5);
    Groupbox:Resize();

    return Label;
end;

return Funcs

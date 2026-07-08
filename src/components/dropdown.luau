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

function Funcs:AddDropdown(Idx, Info)
    if Info.SpecialType == 'Player' then
        Info.Values = GetPlayersString();
        Info.AllowNull = true;
    elseif Info.SpecialType == 'Team' then
        Info.Values = GetTeamsString();
        Info.AllowNull = true;
    end;

    assert(Info.Values, 'AddDropdown: Missing dropdown value list.');
    assert(Info.AllowNull or Info.Default, 'AddDropdown: Missing default value. Pass `AllowNull` as true if this was intentional.')

    if (not Info.Text) then
        Info.Compact = true;
    end;

    local Dropdown = {
        Values = Info.Values;
        Value = Info.Multi and {};
        Multi = Info.Multi;
        Type = 'Dropdown';
        SpecialType = Info.SpecialType; -- can be either 'Player' or 'Team'
        Callback = Info.Callback or function(Value) end;
    };

    local Groupbox = self;
    local Container = Groupbox.Container;

    local RelativeOffset = 0;

    if not Info.Compact then
        local DropdownLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 0, 10);
            TextSize = 14;
            Text = Info.Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            TextYAlignment = Enum.TextYAlignment.Bottom;
            ZIndex = 5;
            Parent = Container;
        });

        Groupbox:AddBlank(3);
    end

    for _, Element in next, Container:GetChildren() do
        if not Element:IsA('UIListLayout') then
            RelativeOffset = RelativeOffset + Element.Size.Y.Offset;
        end;
    end;

    local DropdownOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        Size = UDim2.new(1, -4, 0, 20);
        ZIndex = 5;
        Parent = Container;
    });

    Library:AddToRegistry(DropdownOuter, {
        BorderColor3 = 'Black';
    });

    local DropdownInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 6;
        Parent = DropdownOuter;
    });

    Library:AddToRegistry(DropdownInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
        });
        Rotation = 90;
        Parent = DropdownInner;
    });

    local DropdownArrow = Library:Create('ImageLabel', {
        AnchorPoint = Vector2.new(0, 0.5);
        BackgroundTransparency = 1;
        Position = UDim2.new(1, -16, 0.5, 0);
        Size = UDim2.new(0, 12, 0, 12);
        Image = 'http://www.roblox.com/asset/?id=6282522798';
        ZIndex = 8;
        Parent = DropdownInner;
    });

    local ItemList = Library:CreateLabel({
        Position = UDim2.new(0, 5, 0, 0);
        Size = UDim2.new(1, -5, 1, 0);
        TextSize = 14;
        Text = '--';
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        ZIndex = 7;
        Parent = DropdownInner;
    });

    Library:OnHighlight(DropdownOuter, DropdownOuter,
        { BorderColor3 = 'AccentColor' },
        { BorderColor3 = 'Black' }
    );

    if type(Info.Tooltip) == 'string' then
        Library:AddToolTip(Info.Tooltip, DropdownOuter)
    end

    local MAX_DROPDOWN_ITEMS = 8;

    local ListOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        ZIndex = 20;
        Visible = false;
        Parent = ScreenGui;
    });

    local function RecalculateListPosition()
        ListOuter.Position = UDim2.fromOffset(DropdownOuter.AbsolutePosition.X, DropdownOuter.AbsolutePosition.Y + DropdownOuter.Size.Y.Offset + 1);
    end;

    local function RecalculateListSize(YSize)
        ListOuter.Size = UDim2.fromOffset(DropdownOuter.AbsoluteSize.X, YSize or (MAX_DROPDOWN_ITEMS * 20 + 2))
    end;

    RecalculateListPosition();
    RecalculateListSize();

    DropdownOuter:GetPropertyChangedSignal('AbsolutePosition'):Connect(RecalculateListPosition);

    local ListInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        BorderSizePixel = 0;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 21;
        Parent = ListOuter;
    });

    Library:AddToRegistry(ListInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    local Scrolling = Library:Create('ScrollingFrame', {
        BackgroundTransparency = 1;
        BorderSizePixel = 0;
        CanvasSize = UDim2.new(0, 0, 0, 0);
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 21;
        Parent = ListInner;

        TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
        BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',

        ScrollBarThickness = 3,
        ScrollBarImageColor3 = Library.AccentColor,
    });

    Library:AddToRegistry(Scrolling, {
        ScrollBarImageColor3 = 'AccentColor'
    })

    Library:Create('UIListLayout', {
        Padding = UDim.new(0, 0);
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = Scrolling;
    });

    function Dropdown:Display()
        local Values = Dropdown.Values;
        local Str = '';

        if Info.Multi then
            for Idx, Value in next, Values do
                if Dropdown.Value[Value] then
                    Str = Str .. Value .. ', ';
                end;
            end;

            Str = Str:sub(1, #Str - 2);
        else
            Str = Dropdown.Value or '';
        end;

        ItemList.Text = (Str == '' and '--' or Str);
    end;

    function Dropdown:GetActiveValues()
        if Info.Multi then
            local T = {};

            for Value, Bool in next, Dropdown.Value do
                table.insert(T, Value);
            end;

            return T;
        else
            return Dropdown.Value and 1 or 0;
        end;
    end;

    function Dropdown:BuildDropdownList()
        local Values = Dropdown.Values;
        local Buttons = {};

        for _, Element in next, Scrolling:GetChildren() do
            if not Element:IsA('UIListLayout') then
                Element:Destroy();
            end;
        end;

        local Count = 0;

        for Idx, Value in next, Values do
            local Table = {};

            Count = Count + 1;

            local Button = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Middle;
                Size = UDim2.new(1, -1, 0, 20);
                ZIndex = 23;
                Active = true,
                Parent = Scrolling;
            });

            Library:AddToRegistry(Button, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });

            local ButtonLabel = Library:CreateLabel({
                Active = false;
                Size = UDim2.new(1, -6, 1, 0);
                Position = UDim2.new(0, 6, 0, 0);
                TextSize = 14;
                Text = Value;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 25;
                Parent = Button;
            });

            Library:OnHighlight(Button, Button,
                { BorderColor3 = 'AccentColor', ZIndex = 24 },
                { BorderColor3 = 'OutlineColor', ZIndex = 23 }
            );

            local Selected;

            if Info.Multi then
                Selected = Dropdown.Value[Value];
            else
                Selected = Dropdown.Value == Value;
            end;

            function Table:UpdateButton()
                if Info.Multi then
                    Selected = Dropdown.Value[Value];
                else
                    Selected = Dropdown.Value == Value;
                end;

                ButtonLabel.TextColor3 = Selected and Library.AccentColor or Library.FontColor;
                Library.RegistryMap[ButtonLabel].Properties.TextColor3 = Selected and 'AccentColor' or 'FontColor';
            end;

            ButtonLabel.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local Try = not Selected;

                    if Dropdown:GetActiveValues() == 1 and (not Try) and (not Info.AllowNull) then
                    else
                        if Info.Multi then
                            Selected = Try;

                            if Selected then
                                Dropdown.Value[Value] = true;
                            else
                                Dropdown.Value[Value] = nil;
                            end;
                        else
                            Selected = Try;

                            if Selected then
                                Dropdown.Value = Value;
                            else
                                Dropdown.Value = nil;
                            end;

                            for _, OtherButton in next, Buttons do
                                OtherButton:UpdateButton();
                            end;
                        end;

                        Table:UpdateButton();
                        Dropdown:Display();

                        Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
                        Library:SafeCallback(Dropdown.Changed, Dropdown.Value);

                        Library:AttemptSave();
                    end;
                end;
            end);

            Table:UpdateButton();
            Dropdown:Display();

            Buttons[Button] = Table;
        end;

        Scrolling.CanvasSize = UDim2.fromOffset(0, (Count * 20) + 1);

        local Y = math.clamp(Count * 20, 0, MAX_DROPDOWN_ITEMS * 20) + 1;
        RecalculateListSize(Y);
    end;

    function Dropdown:SetValues(NewValues)
        if NewValues then
            Dropdown.Values = NewValues;
        end;

        Dropdown:BuildDropdownList();
    end;

    function Dropdown:OpenDropdown()
        ListOuter.Visible = true;
        Library.OpenedFrames[ListOuter] = true;
        DropdownArrow.Rotation = 180;
    end;

    function Dropdown:CloseDropdown()
        ListOuter.Visible = false;
        Library.OpenedFrames[ListOuter] = nil;
        DropdownArrow.Rotation = 0;
    end;

    function Dropdown:OnChanged(Func)
        Dropdown.Changed = Func;
        Func(Dropdown.Value);
    end;

    function Dropdown:SetValue(Val)
        if Dropdown.Multi then
            local nTable = {};

            for Value, Bool in next, Val do
                if table.find(Dropdown.Values, Value) then
                    nTable[Value] = true
                end;
            end;

            Dropdown.Value = nTable;
        else
            if (not Val) then
                Dropdown.Value = nil;
            elseif table.find(Dropdown.Values, Val) then
                Dropdown.Value = Val;
            end;
        end;

        Dropdown:BuildDropdownList();

        Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
        Library:SafeCallback(Dropdown.Changed, Dropdown.Value);
    end;

    DropdownOuter.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
            if ListOuter.Visible then
                Dropdown:CloseDropdown();
            else
                Dropdown:OpenDropdown();
            end;
        end;
    end);

    InputService.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local AbsPos, AbsSize = ListOuter.AbsolutePosition, ListOuter.AbsoluteSize;

            if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                Dropdown:CloseDropdown();
            end;
        end;
    end);

    Dropdown:BuildDropdownList();
    Dropdown:Display();

    local Defaults = {}

    if type(Info.Default) == 'string' then
        local Idx = table.find(Dropdown.Values, Info.Default)
        if Idx then
            table.insert(Defaults, Idx)
        end
    elseif type(Info.Default) == 'table' then
        for _, Value in next, Info.Default do
            local Idx = table.find(Dropdown.Values, Value)
            if Idx then
                table.insert(Defaults, Idx)
            end
        end
    elseif type(Info.Default) == 'number' and Dropdown.Values[Info.Default] ~= nil then
        table.insert(Defaults, Info.Default)
    end

    if next(Defaults) then
        for i = 1, #Defaults do
            local Index = Defaults[i]
            if Info.Multi then
                Dropdown.Value[Dropdown.Values[Index]] = true
            else
                Dropdown.Value = Dropdown.Values[Index];
            end

            if (not Info.Multi) then break end
        end

        Dropdown:BuildDropdownList();
        Dropdown:Display();
    end

    Groupbox:AddBlank(Info.BlankSize or 5);
    Groupbox:Resize();

    Options[Idx] = Dropdown;

    return Dropdown;
end;

return Funcs

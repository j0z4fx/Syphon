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

local Funcs = Library.AddonFuncs

function Funcs:AddKeyPicker(Idx, Info)
    local ParentObj = self;
    local ToggleLabel = self.TextLabel;
    local Container = self.Container;

    assert(Info.Default, 'AddKeyPicker: Missing default value.');

    local KeyPicker = {
        Value = Info.Default;
        Toggled = false;
        Mode = Info.Mode or 'Toggle'; -- Always, Toggle, Hold
        Type = 'KeyPicker';
        Callback = Info.Callback or function(Value) end;
        ChangedCallback = Info.ChangedCallback or function(New) end;

        SyncToggleState = Info.SyncToggleState or false;
    };

    if KeyPicker.SyncToggleState then
        Info.Modes = { 'Toggle' }
        Info.Mode = 'Toggle'
    end

    local PickOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        Size = UDim2.new(0, 28, 0, 15);
        ZIndex = 6;
        Parent = ToggleLabel;
    });

    local PickInner = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 7;
        Parent = PickOuter;
    });

    Library:AddToRegistry(PickInner, {
        BackgroundColor3 = 'BackgroundColor';
        BorderColor3 = 'OutlineColor';
    });

    local DisplayLabel = Library:CreateLabel({
        Size = UDim2.new(1, 0, 1, 0);
        TextSize = 13;
        Text = Info.Default;
        TextWrapped = true;
        ZIndex = 8;
        Parent = PickInner;
    });

    local ModeSelectOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
        Size = UDim2.new(0, 60, 0, 45 + 2);
        Visible = false;
        ZIndex = 14;
        Parent = ScreenGui;
    });

    ToggleLabel:GetPropertyChangedSignal('AbsolutePosition'):Connect(function()
        ModeSelectOuter.Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
    end);

    local ModeSelectInner = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 15;
        Parent = ModeSelectOuter;
    });

    Library:AddToRegistry(ModeSelectInner, {
        BackgroundColor3 = 'BackgroundColor';
        BorderColor3 = 'OutlineColor';
    });

    Library:Create('UIListLayout', {
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = ModeSelectInner;
    });

    local ContainerLabel = Library:CreateLabel({
        TextXAlignment = Enum.TextXAlignment.Left;
        Size = UDim2.new(1, 0, 0, 18);
        TextSize = 13;
        Visible = false;
        ZIndex = 110;
        Parent = Library.KeybindContainer;
    },  true);

    local Modes = Info.Modes or { 'Always', 'Toggle', 'Hold' };
    local ModeButtons = {};

    for Idx, Mode in next, Modes do
        local ModeButton = {};

        local Label = Library:CreateLabel({
            Active = false;
            Size = UDim2.new(1, 0, 0, 15);
            TextSize = 13;
            Text = Mode;
            ZIndex = 16;
            Parent = ModeSelectInner;
        });

        function ModeButton:Select()
            for _, Button in next, ModeButtons do
                Button:Deselect();
            end;

            KeyPicker.Mode = Mode;

            Label.TextColor3 = Library.AccentColor;
            Library.RegistryMap[Label].Properties.TextColor3 = 'AccentColor';

            ModeSelectOuter.Visible = false;
        end;

        function ModeButton:Deselect()
            KeyPicker.Mode = nil;

            Label.TextColor3 = Library.FontColor;
            Library.RegistryMap[Label].Properties.TextColor3 = 'FontColor';
        end;

        Label.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                ModeButton:Select();
                Library:AttemptSave();
            end;
        end);

        if Mode == KeyPicker.Mode then
            ModeButton:Select();
        end;

        ModeButtons[Mode] = ModeButton;
    end;

    function KeyPicker:Update()
        if Info.NoUI then
            return;
        end;

        local State = KeyPicker:GetState();

        ContainerLabel.Text = string.format('[%s] %s (%s)', KeyPicker.Value, Info.Text, KeyPicker.Mode);

        ContainerLabel.Visible = true;
        ContainerLabel.TextColor3 = State and Library.AccentColor or Library.FontColor;

        Library.RegistryMap[ContainerLabel].Properties.TextColor3 = State and 'AccentColor' or 'FontColor';

        local YSize = 0
        local XSize = 0

        for _, Label in next, Library.KeybindContainer:GetChildren() do
            if Label:IsA('TextLabel') and Label.Visible then
                YSize = YSize + 18;
                if (Label.TextBounds.X > XSize) then
                    XSize = Label.TextBounds.X
                end
            end;
        end;

        Library.KeybindFrame.Size = UDim2.new(0, math.max(XSize + 10, 210), 0, YSize + 23)
    end;

    function KeyPicker:GetState()
        if KeyPicker.Mode == 'Always' then
            return true;
        elseif KeyPicker.Mode == 'Hold' then
            if KeyPicker.Value == 'None' then
                return false;
            end

            local Key = KeyPicker.Value;

            if Key == 'MB1' or Key == 'MB2' then
                return Key == 'MB1' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
                    or Key == 'MB2' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);
            else
                return InputService:IsKeyDown(Enum.KeyCode[KeyPicker.Value]);
            end;
        else
            return KeyPicker.Toggled;
        end;
    end;

    function KeyPicker:SetValue(Data)
        local Key, Mode = Data[1], Data[2];
        DisplayLabel.Text = Key;
        KeyPicker.Value = Key;
        ModeButtons[Mode]:Select();
        KeyPicker:Update();
    end;

    function KeyPicker:OnClick(Callback)
        KeyPicker.Clicked = Callback
    end

    function KeyPicker:OnChanged(Callback)
        KeyPicker.Changed = Callback
        Callback(KeyPicker.Value)
    end

    if ParentObj.Addons then
        table.insert(ParentObj.Addons, KeyPicker)
    end

    function KeyPicker:DoClick()
        if ParentObj.Type == 'Toggle' and KeyPicker.SyncToggleState then
            ParentObj:SetValue(not ParentObj.Value)
        end

        Library:SafeCallback(KeyPicker.Callback, KeyPicker.Toggled)
        Library:SafeCallback(KeyPicker.Clicked, KeyPicker.Toggled)
    end

    local Picking = false;

    PickOuter.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
            Picking = true;

            DisplayLabel.Text = '';

            local Break;
            local Text = '';

            task.spawn(function()
                while (not Break) do
                    if Text == '...' then
                        Text = '';
                    end;

                    Text = Text .. '.';
                    DisplayLabel.Text = Text;

                    wait(0.4);
                end;
            end);

            wait(0.2);

            local Event;
            Event = InputService.InputBegan:Connect(function(Input)
                local Key;

                if Input.UserInputType == Enum.UserInputType.Keyboard then
                    Key = Input.KeyCode.Name;
                elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Key = 'MB1';
                elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
                    Key = 'MB2';
                end;

                Break = true;
                Picking = false;

                DisplayLabel.Text = Key;
                KeyPicker.Value = Key;

                Library:SafeCallback(KeyPicker.ChangedCallback, Input.KeyCode or Input.UserInputType)
                Library:SafeCallback(KeyPicker.Changed, Input.KeyCode or Input.UserInputType)

                Library:AttemptSave();

                Event:Disconnect();
            end);
        elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
            ModeSelectOuter.Visible = true;
        end;
    end);

    Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
        if (not Picking) then
            if KeyPicker.Mode == 'Toggle' then
                local Key = KeyPicker.Value;

                if Key == 'MB1' or Key == 'MB2' then
                    if Key == 'MB1' and Input.UserInputType == Enum.UserInputType.MouseButton1
                    or Key == 'MB2' and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                        KeyPicker.Toggled = not KeyPicker.Toggled
                        KeyPicker:DoClick()
                    end;
                elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                    if Input.KeyCode.Name == Key then
                        KeyPicker.Toggled = not KeyPicker.Toggled;
                        KeyPicker:DoClick()
                    end;
                end;
            end;

            KeyPicker:Update();
        end;

        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local AbsPos, AbsSize = ModeSelectOuter.AbsolutePosition, ModeSelectOuter.AbsoluteSize;

            if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                ModeSelectOuter.Visible = false;
            end;
        end;
    end))

    Library:GiveSignal(InputService.InputEnded:Connect(function(Input)
        if (not Picking) then
            KeyPicker:Update();
        end;
    end))

    KeyPicker:Update();

    Options[Idx] = KeyPicker;

    return self;
end;

return Funcs

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

function Funcs:AddSlider(Idx, Info)
    assert(Info.Default, 'AddSlider: Missing default value.');
    assert(Info.Text, 'AddSlider: Missing slider text.');
    assert(Info.Min, 'AddSlider: Missing minimum value.');
    assert(Info.Max, 'AddSlider: Missing maximum value.');
    assert(Info.Rounding, 'AddSlider: Missing rounding value.');

    local Slider = {
        Value = Info.Default;
        Min = Info.Min;
        Max = Info.Max;
        Rounding = Info.Rounding;
        MaxSize = 232;
        Type = 'Slider';
        Callback = Info.Callback or function(Value) end;
    };

    local Groupbox = self;
    local Container = Groupbox.Container;

    if not Info.Compact then
        Library:CreateLabel({
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

    local SliderOuter = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderColor3 = Color3.new(0, 0, 0);
        Size = UDim2.new(1, -4, 0, 13);
        ZIndex = 5;
        Parent = Container;
    });

    Library:AddToRegistry(SliderOuter, {
        BorderColor3 = 'Black';
    });

    local SliderInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 6;
        Parent = SliderOuter;
    });

    Library:AddToRegistry(SliderInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    local Fill = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderColor3 = Library.AccentColorDark;
        Size = UDim2.new(0, 0, 1, 0);
        ZIndex = 7;
        Parent = SliderInner;
    });

    Library:AddToRegistry(Fill, {
        BackgroundColor3 = 'AccentColor';
        BorderColor3 = 'AccentColorDark';
    });

    local HideBorderRight = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Position = UDim2.new(1, 0, 0, 0);
        Size = UDim2.new(0, 1, 1, 0);
        ZIndex = 8;
        Parent = Fill;
    });

    Library:AddToRegistry(HideBorderRight, {
        BackgroundColor3 = 'AccentColor';
    });

    local DisplayLabel = Library:CreateLabel({
        Size = UDim2.new(1, 0, 1, 0);
        TextSize = 14;
        Text = 'Infinite';
        ZIndex = 9;
        Parent = SliderInner;
    });

    Library:OnHighlight(SliderOuter, SliderOuter,
        { BorderColor3 = 'AccentColor' },
        { BorderColor3 = 'Black' }
    );

    if type(Info.Tooltip) == 'string' then
        Library:AddToolTip(Info.Tooltip, SliderOuter)
    end

    function Slider:UpdateColors()
        Fill.BackgroundColor3 = Library.AccentColor;
        Fill.BorderColor3 = Library.AccentColorDark;
    end;

    function Slider:Display()
        local Suffix = Info.Suffix or '';

        if Info.Compact then
            DisplayLabel.Text = Info.Text .. ': ' .. Slider.Value .. Suffix
        elseif Info.HideMax then
            DisplayLabel.Text = string.format('%s', Slider.Value .. Suffix)
        else
            DisplayLabel.Text = string.format('%s/%s', Slider.Value .. Suffix, Slider.Max .. Suffix);
        end

        local X = math.ceil(Library:MapValue(Slider.Value, Slider.Min, Slider.Max, 0, Slider.MaxSize));
        Fill.Size = UDim2.new(0, X, 1, 0);

        HideBorderRight.Visible = not (X == Slider.MaxSize or X == 0);
    end;

    function Slider:OnChanged(Func)
        Slider.Changed = Func;
        Func(Slider.Value);
    end;

    local function Round(Value)
        if Slider.Rounding == 0 then
            return math.floor(Value);
        end;


        return tonumber(string.format('%.' .. Slider.Rounding .. 'f', Value))
    end;

    function Slider:GetValueFromXOffset(X)
        return Round(Library:MapValue(X, 0, Slider.MaxSize, Slider.Min, Slider.Max));
    end;

    function Slider:SetValue(Str)
        local Num = tonumber(Str);

        if (not Num) then
            return;
        end;

        Num = math.clamp(Num, Slider.Min, Slider.Max);

        Slider.Value = Num;
        Slider:Display();

        Library:SafeCallback(Slider.Callback, Slider.Value);
        Library:SafeCallback(Slider.Changed, Slider.Value);
    end;

    SliderInner.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
            local mPos = Mouse.X;
            local gPos = Fill.Size.X.Offset;
            local Diff = mPos - (Fill.AbsolutePosition.X + gPos);

            while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                local nMPos = Mouse.X;
                local nX = math.clamp(gPos + (nMPos - mPos) + Diff, 0, Slider.MaxSize);

                local nValue = Slider:GetValueFromXOffset(nX);
                local OldValue = Slider.Value;
                Slider.Value = nValue;

                Slider:Display();

                if nValue ~= OldValue then
                    Library:SafeCallback(Slider.Callback, Slider.Value);
                    Library:SafeCallback(Slider.Changed, Slider.Value);
                end;

                RenderStepped:Wait();
            end;

            Library:AttemptSave();
        end;
    end);

    Slider:Display();
    Groupbox:AddBlank(Info.BlankSize or 6);
    Groupbox:Resize();

    Options[Idx] = Slider;

    return Slider;
end;

return Funcs

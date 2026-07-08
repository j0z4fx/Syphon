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

function Funcs:AddButton(...)
    -- TODO: Eventually redo this
    local Button = {};
    local function ProcessButtonParams(Class, Obj, ...)
        local Props = select(1, ...)
        if type(Props) == 'table' then
            Obj.Text = Props.Text
            Obj.Func = Props.Func
            Obj.DoubleClick = Props.DoubleClick
            Obj.Tooltip = Props.Tooltip
        else
            Obj.Text = select(1, ...)
            Obj.Func = select(2, ...)
        end

        assert(type(Obj.Func) == 'function', 'AddButton: `Func` callback is missing.');
    end

    ProcessButtonParams('Button', Button, ...)

    local Groupbox = self;
    local Container = Groupbox.Container;

    local function CreateBaseButton(Button)
        local Outer = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 20);
            ZIndex = 5;
        });

        local Inner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = Outer;
        });

        local Label = Library:CreateLabel({
            Size = UDim2.new(1, 0, 1, 0);
            TextSize = 14;
            Text = Button.Text;
            ZIndex = 6;
            Parent = Inner;
        });

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = Inner;
        });

        Library:AddToRegistry(Outer, {
            BorderColor3 = 'Black';
        });

        Library:AddToRegistry(Inner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:OnHighlight(Outer, Outer,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        return Outer, Inner, Label
    end

    local function InitEvents(Button)
        local function WaitForEvent(event, timeout, validator)
            local bindable = Instance.new('BindableEvent')
            local connection = event:Once(function(...)

                if type(validator) == 'function' and validator(...) then
                    bindable:Fire(true)
                else
                    bindable:Fire(false)
                end
            end)
            task.delay(timeout, function()
                connection:disconnect()
                bindable:Fire(false)
            end)
            return bindable.Event:Wait()
        end

        local function ValidateClick(Input)
            if Library:MouseIsOverOpenedFrame() then
                return false
            end

            if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                return false
            end

            return true
        end

        Button.Outer.InputBegan:Connect(function(Input)
            if not ValidateClick(Input) then return end
            if Button.Locked then return end

            if Button.DoubleClick then
                Library:RemoveFromRegistry(Button.Label)
                Library:AddToRegistry(Button.Label, { TextColor3 = 'AccentColor' })

                Button.Label.TextColor3 = Library.AccentColor
                Button.Label.Text = 'Are you sure?'
                Button.Locked = true

                local clicked = WaitForEvent(Button.Outer.InputBegan, 0.5, ValidateClick)

                Library:RemoveFromRegistry(Button.Label)
                Library:AddToRegistry(Button.Label, { TextColor3 = 'FontColor' })

                Button.Label.TextColor3 = Library.FontColor
                Button.Label.Text = Button.Text
                task.defer(rawset, Button, 'Locked', false)

                if clicked then
                    Library:SafeCallback(Button.Func)
                end

                return
            end

            Library:SafeCallback(Button.Func);
        end)
    end

    Button.Outer, Button.Inner, Button.Label = CreateBaseButton(Button)
    Button.Outer.Parent = Container

    InitEvents(Button)

    function Button:AddTooltip(tooltip)
        if type(tooltip) == 'string' then
            Library:AddToolTip(tooltip, self.Outer)
        end
        return self
    end


    function Button:AddButton(...)
        local SubButton = {}

        ProcessButtonParams('SubButton', SubButton, ...)

        self.Outer.Size = UDim2.new(0.5, -2, 0, 20)

        SubButton.Outer, SubButton.Inner, SubButton.Label = CreateBaseButton(SubButton)

        SubButton.Outer.Position = UDim2.new(1, 3, 0, 0)
        SubButton.Outer.Size = UDim2.fromOffset(self.Outer.AbsoluteSize.X - 2, self.Outer.AbsoluteSize.Y)
        SubButton.Outer.Parent = self.Outer

        function SubButton:AddTooltip(tooltip)
            if type(tooltip) == 'string' then
                Library:AddToolTip(tooltip, self.Outer)
            end
            return SubButton
        end

        if type(SubButton.Tooltip) == 'string' then
            SubButton:AddTooltip(SubButton.Tooltip)
        end

        InitEvents(SubButton)
        return SubButton
    end

    if type(Button.Tooltip) == 'string' then
        Button:AddTooltip(Button.Tooltip)
    end

    Groupbox:AddBlank(5);
    Groupbox:Resize();

    return Button;
end;

return Funcs

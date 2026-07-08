--!nonstrict
local Library = require('core')

local ScreenGui = Library.ScreenGui

Library.NotificationArea = Library:Create('Frame', {
    BackgroundTransparency = 1;
    Position = UDim2.new(0, 0, 0, 40);
    Size = UDim2.new(0, 300, 0, 200);
    ZIndex = 100;
    Parent = ScreenGui;
});

Library:Create('UIListLayout', {
    Padding = UDim.new(0, 4);
    FillDirection = Enum.FillDirection.Vertical;
    SortOrder = Enum.SortOrder.LayoutOrder;
    Parent = Library.NotificationArea;
});

local WatermarkOuter = Library:Create('Frame', {
    BorderColor3 = Color3.new(0, 0, 0);
    Position = UDim2.new(0, 100, 0, -25);
    Size = UDim2.new(0, 213, 0, 20);
    ZIndex = 200;
    Visible = false;
    Parent = ScreenGui;
});

local WatermarkInner = Library:Create('Frame', {
    BackgroundColor3 = Library.MainColor;
    BorderColor3 = Library.AccentColor;
    BorderMode = Enum.BorderMode.Inset;
    Size = UDim2.new(1, 0, 1, 0);
    ZIndex = 201;
    Parent = WatermarkOuter;
});

Library:AddToRegistry(WatermarkInner, {
    BorderColor3 = 'AccentColor';
});

local InnerFrame = Library:Create('Frame', {
    BackgroundColor3 = Color3.new(1, 1, 1);
    BorderSizePixel = 0;
    Position = UDim2.new(0, 1, 0, 1);
    Size = UDim2.new(1, -2, 1, -2);
    ZIndex = 202;
    Parent = WatermarkInner;
});

local Gradient = Library:Create('UIGradient', {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
        ColorSequenceKeypoint.new(1, Library.MainColor),
    });
    Rotation = -90;
    Parent = InnerFrame;
});

Library:AddToRegistry(Gradient, {
    Color = function()
        return ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
    end
});

local WatermarkLabel = Library:CreateLabel({
    Position = UDim2.new(0, 5, 0, 0);
    Size = UDim2.new(1, -4, 1, 0);
    TextSize = 14;
    TextXAlignment = Enum.TextXAlignment.Left;
    ZIndex = 203;
    Parent = InnerFrame;
});

Library.Watermark = WatermarkOuter;
Library.WatermarkText = WatermarkLabel;
Library:MakeDraggable(Library.Watermark);



local KeybindOuter = Library:Create('Frame', {
    AnchorPoint = Vector2.new(0, 0.5);
    BorderColor3 = Color3.new(0, 0, 0);
    Position = UDim2.new(0, 10, 0.5, 0);
    Size = UDim2.new(0, 210, 0, 20);
    Visible = false;
    ZIndex = 100;
    Parent = ScreenGui;
});

local KeybindInner = Library:Create('Frame', {
    BackgroundColor3 = Library.MainColor;
    BorderColor3 = Library.OutlineColor;
    BorderMode = Enum.BorderMode.Inset;
    Size = UDim2.new(1, 0, 1, 0);
    ZIndex = 101;
    Parent = KeybindOuter;
});

Library:AddToRegistry(KeybindInner, {
    BackgroundColor3 = 'MainColor';
    BorderColor3 = 'OutlineColor';
}, true);

local ColorFrame = Library:Create('Frame', {
    BackgroundColor3 = Library.AccentColor;
    BorderSizePixel = 0;
    Size = UDim2.new(1, 0, 0, 2);
    ZIndex = 102;
    Parent = KeybindInner;
});

Library:AddToRegistry(ColorFrame, {
    BackgroundColor3 = 'AccentColor';
}, true);

local KeybindLabel = Library:CreateLabel({
    Size = UDim2.new(1, 0, 0, 20);
    Position = UDim2.fromOffset(5, 2),
    TextXAlignment = Enum.TextXAlignment.Left,

    Text = 'Keybinds';
    ZIndex = 104;
    Parent = KeybindInner;
});

local KeybindContainer = Library:Create('Frame', {
    BackgroundTransparency = 1;
    Size = UDim2.new(1, 0, 1, -20);
    Position = UDim2.new(0, 0, 0, 20);
    ZIndex = 1;
    Parent = KeybindInner;
});

Library:Create('UIListLayout', {
    FillDirection = Enum.FillDirection.Vertical;
    SortOrder = Enum.SortOrder.LayoutOrder;
    Parent = KeybindContainer;
});

Library:Create('UIPadding', {
    PaddingLeft = UDim.new(0, 5),
    Parent = KeybindContainer,
})

Library.KeybindFrame = KeybindOuter;
Library.KeybindContainer = KeybindContainer;
Library:MakeDraggable(KeybindOuter);

function Library:SetWatermarkVisibility(Bool)
    Library.Watermark.Visible = Bool;
end;

function Library:SetWatermark(Text)
    local X, Y = Library:GetTextBounds(Text, Library.Font, 14);
    Library.Watermark.Size = UDim2.new(0, X + 15, 0, (Y * 1.5) + 3);
    Library:SetWatermarkVisibility(true)

    Library.WatermarkText.Text = Text;
end;

function Library:Notify(Text, Time)
    local XSize, YSize = Library:GetTextBounds(Text, Library.Font, 14);

    YSize = YSize + 7

    local NotifyOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 100, 0, 10);
        Size = UDim2.new(0, 0, 0, YSize);
        ClipsDescendants = true;
        ZIndex = 100;
        Parent = Library.NotificationArea;
    });

    local NotifyInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 101;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(NotifyInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    }, true);

    local InnerFrame = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(1, 1, 1);
        BorderSizePixel = 0;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 102;
        Parent = NotifyInner;
    });

    local Gradient = Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
        Rotation = -90;
        Parent = InnerFrame;
    });

    Library:AddToRegistry(Gradient, {
        Color = function()
            return ColorSequence.new({
                ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
                ColorSequenceKeypoint.new(1, Library.MainColor),
            });
        end
    });

    local NotifyLabel = Library:CreateLabel({
        Position = UDim2.new(0, 4, 0, 0);
        Size = UDim2.new(1, -4, 1, 0);
        Text = Text;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextSize = 14;
        ZIndex = 103;
        Parent = InnerFrame;
    });

    local LeftColor = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Position = UDim2.new(0, -1, 0, -1);
        Size = UDim2.new(0, 3, 1, 2);
        ZIndex = 104;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(LeftColor, {
        BackgroundColor3 = 'AccentColor';
    }, true);

    pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, XSize + 8 + 4, 0, YSize), 'Out', 'Quad', 0.4, true);

    task.spawn(function()
        wait(Time or 5);

        pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, 0, 0, YSize), 'Out', 'Quad', 0.4, true);

        wait(0.4);

        NotifyOuter:Destroy();
    end);
end;

return Library

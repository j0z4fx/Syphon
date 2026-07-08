--!nonstrict
-- Window — draggable frame, 16:9 (800x450 default). Bottom toolbar hosts the
-- avatar chip and centered tab buttons. Corners drawn by the corner engine.
local Env = require('core/env')
local TabButton = require('components/TabButton')
local RoundedFrame = require('components/RoundedFrame')

local UserInputService = game:GetService('UserInputService')
local Players = game:GetService('Players')

local TOOLBAR_HEIGHT = 43 -- odd => true vertical center pixel

-- props: { Size: UDim2?, Position: UDim2?, Visible: boolean?,
--          Tabs: { { Name: string, Icon: string, Content: ReactElement? } }?, children: ... }
local function Window(props)
    local React = Env.React
    local Theme = Env.Theme
    local Icons = Env.Icons

    local activeTab, setActiveTab = React.useState(1)
    local outerRef = React.useRef(nil)

    local onDrag = React.useCallback(function(_, input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        local outer = outerRef.current
        if not outer then return end

        local startMouse = UserInputService:GetMouseLocation()
        local startPos = outer.Position

        local moveConn, upConn
        moveConn = UserInputService.InputChanged:Connect(function(io)
            if io.UserInputType ~= Enum.UserInputType.MouseMovement then return end
            local m = UserInputService:GetMouseLocation()
            outer.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + (m.X - startMouse.X),
                startPos.Y.Scale, startPos.Y.Offset + (m.Y - startMouse.Y)
            )
        end)
        upConn = UserInputService.InputEnded:Connect(function(io)
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                moveConn:Disconnect()
                upConn:Disconnect()
            end
        end)
    end, {})

    local tabs = props.Tabs or {}

    -- centered row of square icon tab buttons
    local tabChildren = {
        Layout = React.createElement('UIListLayout', {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Padding = UDim.new(0, 6),
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),
    }
    -- one page per tab; only the active one is visible
    local pages = {}
    for i, tab in ipairs(tabs) do
        tabChildren[tab.Name] = React.createElement(TabButton, {
            LayoutOrder = i,
            Image = Icons.GetIcon(tab.Icon),
            Active = activeTab == i,
            OnClick = function() setActiveTab(i) end,
        })
        pages[tab.Name] = React.createElement('Frame', {
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
            Visible = activeTab == i,
        }, tab.Content)
    end

    return React.createElement('Frame', {
        ref = outerRef,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = props.Position or UDim2.fromScale(0.5, 0.5),
        Size = props.Size or UDim2.fromOffset(800, 450),
        BackgroundTransparency = 1,
        Visible = props.Visible ~= false,
    }, {
        Bg = React.createElement(RoundedFrame, {
            Color = Theme.Color.Background,
            Size = UDim2.fromScale(1, 1),
        }),
        Content = React.createElement('Frame', {
            Size = UDim2.new(1, 0, 1, -TOOLBAR_HEIGHT),
            BackgroundTransparency = 1,
            ZIndex = 2,
        }, {
            -- empty space drags the window; controls sit on top and sink input
            DragLayer = React.createElement('Frame', {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                ZIndex = 1,
                [React.Event.InputBegan] = onDrag,
            }),
            Body = React.createElement('Frame', {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                ZIndex = 2,
            }, next(pages) and pages or props.children),
        }),
        Toolbar = React.createElement(RoundedFrame, {
            Color = Theme.Color.Surface,
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.fromScale(0, 1),
            Size = UDim2.new(1, 0, 0, TOOLBAR_HEIGHT),
            ZIndex = 2,
        }, {
            -- square off the toolbar's top corners; bottom stays rounded
            TopSquare = React.createElement('Frame', {
                Size = UDim2.new(1, 0, 0, Theme.Layout.Corner),
                BackgroundColor3 = Theme.Color.Surface,
                BorderSizePixel = 0,
            }),
            Avatar = React.createElement('Frame', {
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.new(0, 8, 0.5, 0),
                Size = UDim2.fromOffset(31, 31),
                BackgroundColor3 = Theme.Color.Background,
                BorderSizePixel = 0,
            }, {
                Round = React.createElement('UICorner', {
                    CornerRadius = UDim.new(0.5, 0),
                }),
                Headshot = React.createElement('ImageLabel', {
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromOffset(29, 29),
                    BackgroundTransparency = 1,
                    Image = ('rbxthumb://type=AvatarHeadShot&id=%d&w=48&h=48')
                        :format(Players.LocalPlayer.UserId),
                }, {
                    Round = React.createElement('UICorner', {
                        CornerRadius = UDim.new(0.5, 0),
                    }),
                }),
            }),
            DisplayName = React.createElement('TextLabel', {
                Position = UDim2.new(0, 47, 0.5, -8),
                Size = UDim2.fromOffset(200, 14),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                FontFace = Theme.Face.Bold,
                Text = Players.LocalPlayer.DisplayName,
                TextColor3 = Theme.Color.Text,
                TextSize = Theme.Text.Size,
                TextStrokeTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
            Subtext = React.createElement('TextLabel', {
                Position = UDim2.new(0, 47, 0.5, 8),
                Size = UDim2.fromOffset(200, 11),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                FontFace = Theme.Face.Regular,
                Text = 'Premium',
                TextColor3 = Theme.Color.TextMuted,
                TextSize = Theme.Text.SizeXs,
                TextStrokeTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),
            TabBar = React.createElement('Frame', {
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                Size = UDim2.new(1, -120, 1, 0), -- keep clear of avatar/name on the left
                BackgroundTransparency = 1,
            }, tabChildren),
        }),
    })
end

return Window

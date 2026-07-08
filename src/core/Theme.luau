--!nonstrict
-- Design tokens. Pure data — no instances, no logic. Components read from here
-- so a reskin is a single-file change. Extend with new tokens as needed.
return {
    Font = Enum.Font.Code,

    Color = {
        Background = Color3.fromRGB(20, 20, 20),
        Surface    = Color3.fromRGB(28, 28, 28),
        Outline    = Color3.fromRGB(50, 50, 50),
        Accent     = Color3.fromRGB(0, 85, 255),
        Text       = Color3.fromRGB(255, 255, 255),
        TextMuted  = Color3.fromRGB(190, 190, 190),
        Risk       = Color3.fromRGB(255, 50, 50),
        Black      = Color3.new(0, 0, 0),
    },

    Text = {
        Size    = 14,
        SizeSml = 13,
    },

    Layout = {
        Padding   = 4,
        RowHeight = 20,
        Corner    = 0, -- 0 = sharp Linoria-style corners
    },
}

local palette = require("palette")

hl.config({
    general = {
        gaps_in  = 10,
        gaps_out = 14,

        border_size = 3,

        col = {
            active_border = palette.primary,
            inactive_border = "rgba(00000000)",
        },
    },

    decoration = {
        rounding = 6,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = false,
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },
})

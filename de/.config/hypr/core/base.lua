hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
    },

    general = {
        gaps_in  = 10,
        gaps_out = 14,

        border_size = 3,

        col = {
            active_border = primary,
            inactive_border = "rgba(00000000)",
        },

        resize_on_border = true,

        allow_tearing = false,

        layout = "dwindle",
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

    dwindle = {
        preserve_split = true,
    },

    input = {
        kb_layout = "us,se",
        kb_variant = "",
        kb_model = "",
        kb_options = "shift:both_capslock_cancel, grp:ctrls_toggle, lv3:ralt_switch",

        follow_mouse = 1,
        
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
            scroll_factor = 1.0,
            disable_while_typing = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

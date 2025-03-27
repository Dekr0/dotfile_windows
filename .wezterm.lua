local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font {
    family = 'Iosevka',
    weight = 'Regular',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

config.color_scheme = 'Solarized (dark) (terminal.sexy)'

config.default_prog = { 'powershell.exe', '-NoLogo' }

config.key_map_preference = "Physical"

config.keys = {
    {
        key = "1",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(0)
    },
    {
        key = "2",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(1)
    },
    {
        key = "3",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(2)
    },
    {
        key = "4",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(4)
    },
    {
        key = "j",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Left")
    },
    {
        key = "k",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Right")
    },
    {
        key = "h",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = "l",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = ",",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" })
    },
    {
        key = ".",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" })
    }
}


return config

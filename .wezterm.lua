local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font {
    family = 'Iosevka',
    weight = 'Regular',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0}

config.color_scheme = 'zenbones_dark'

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
        key = "k",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Left")
    },
    {
        key = "j",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Right")
    },
    {
        key = "k",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = "j",
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
    },
    {
        key = "t",
        mods = "CTRL|ALT|SHIFT",
        action = wezterm.action.PromptInputLine {
            description = "Enter new name for tab",
            action = wezterm.action_callback(function(window, pane, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end)
        },
    },
    {
        key = "f",
        mods = "CTRL|ALT",
        action = wezterm.action.SpawnCommandInNewTab {
            args   = { "shutil", "--wezterm-fzf-tab" },
            domain = "DefaultDomain"
        }
    }
}

return config

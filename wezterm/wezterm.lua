-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Mocha"
config.default_prog = { "/bin/bash" }
config.hide_tab_bar_if_only_one_tab = true
config.detect_password_input = true
config.window_background_opacity = 0.8
config.window_close_confirmation = "NeverPrompt"

-- and finally, return the configuration to wezterm
return config

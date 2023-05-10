-- Pull in the wezterm API
local wezterm = require("wezterm")
local ui = require("ui")
local keys = require("keys")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Gets the system's light/dark appearance
local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

-- Sets latte or mocha based on system light/dark
local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	end

	return "Catppuccin Latte"
end

config.color_scheme = scheme_for_appearance(get_appearance())
config.default_prog = { "/bin/bash" }
ui.apply_to_config(config)
keys.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config

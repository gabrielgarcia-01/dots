local wezterm = require("wezterm")
local act = wezterm.action

local module = {}

function module.apply_to_config(config)
	config.keys = {
		{ key = "'", mods = "CTRL|SHIFT", action = act.SplitVertical },
		{ key = "\\", mods = "CTRL|SHIFT", action = act.SplitHorizontal },
		{ key = "k", mods = "CTRL|SHIFT", action = act.ScrollByLine(-1) },
		{ key = "j", mods = "CTRL|SHIFT", action = act.ScrollByLine(1) },
	}
end

return module

#!/bin/sh

# Change starship colors
sed -i 's/"catppuccin_latte"/"catppuccin_mocha"/g' ~/dots/configs/starship.toml
# Change glow theme
sed -i 's/latte/mocha/g' ~/dots/configs/glow/glow.yml
# Change bat theme
sed -i 's/latte/mocha/g' ~/dots/configs/bat/config
# Change nvim theme
sed -i 's/catppuccin-latte/catppuccin-mocha/g' ~/dots/configs/nvim/lua/plugins/ui.lua
# Change wezterm theme
sed -i 's/Catppuccin Latte/Catppuccin Mocha/g' ~/dots/configs/wezterm/ui.lua

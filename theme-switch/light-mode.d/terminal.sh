#!/bin/sh

# Change nvim theme, very specific to my use case
sed -i 's/catppuccin-mocha/catppuccin-latte/g' ~/dots/configs/nvim/lua/plugins/ui.lua
# Change wezterm theme
sed -i 's/Mocha/Latte/g' ~/dots/configs/wezterm/ui.lua
# Change starship colors
sed -i 's/"catppuccin_mocha"/"catppuccin_latte"/g' ~/dots/configs/starship.toml
# Change glow theme
sed -i 's/mocha/latte/g' ~/dots/configs/glow/glow.yml
# Change bat theme
sed -i 's/mocha/latte/g' ~/dots/configs/bat/config

#!/bin/sh

# Change gtk-theme and symlink gtk-4 files
gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Latte-Standard-Rosewater-Light
rm -rfv ~/.config/gtk-4.0/*
(cd /usr/share/themes/Catppuccin-Latte-Standard-Rosewater-Light/ && stow -t ~/.config/gtk-4.0 gtk-4.0)
# Change nvim theme, very specific to my use case
sed -i 's/catppuccin-mocha/catppuccin-latte/g' ~/dots/configs/nvim/lua/plugins/ui.lua
# Change wezterm theme, again specific
sed -i 's/Catppuccin Mocha/Catppuccin Latte/g' ~/dots/configs/wezterm/ui.lua
# Change wallpaper
swww img ~/dots/configs/hypr/wallpapers/seaside.gif --transition-type center --transition-step 255
# Change zathura color palette
sed -i 's/catppuccin-mocha/catppuccin-latte/g' ~/dots/configs/zathura/zathurarc
# Change rofi colors
sed -i 's/mocha.rasi/latte.rasi/g' ~/dots/configs/rofi/config.rasi
# Change starship colors
sed -i 's/"catppuccin_mocha"/"catppuccin_latte"/g' ~/dots/configs/starship.toml
# Change glow theme
sed -i 's/mocha/latte/g' ~/dots/configs/glow/glow.yml
# Change bat theme
sed -i 's/mocha/latte/g' ~/dots/configs/bat/config
# Change hyprland colors
sed -i 's/f5e0dc/dc8a78/g' ~/dots/configs/hypr/hyprland.conf
sed -i 's/1e1e2e/eff1f5/g' ~/dots/configs/hypr/hyprland.conf
# Change waybar colors
sed -i 's/CBA6F7/8839EF/g' ~/dots/configs/waybar/config
sed -i 's/A6E3A1/40A02B/g' ~/dots/configs/waybar/config
sed -i 's/F38BA8/D20F39/g' ~/dots/configs/waybar/config
sed -i 's/89DCEB/04A5E5/g' ~/dots/configs/waybar/config
sed -i 's/EBA0AC/E64553/g' ~/dots/configs/waybar/config
sed -i 's/F9E2AF/DF8E1D/g' ~/dots/configs/waybar/config
# Reload waybar
killall waybar && waybar

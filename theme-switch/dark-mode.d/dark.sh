#!/bin/sh

# Change gtk-theme and symlink gtk-4 files
gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Mocha-Standard-Rosewater-Dark
rm -rfv ~/.config/gtk-4.0/*
(cd /usr/share/themes/Catppuccin-Mocha-Standard-Rosewater-Dark/ && stow -t ~/.config/gtk-4.0 gtk-4.0)
# Change nvim theme, very specific to my use case
sed -i 's/catppuccin-latte/catppuccin-mocha/g' ~/dots/configs/nvim/lua/plugins/ui.lua
# Change wezterm theme, again specific
sed -i 's/Catppuccin Latte/Catppuccin Mocha/g' ~/dots/configs/wezterm/ui.lua
# Change wallpaper
swww img ~/dots/configs/hypr/wallpapers/night.gif --transition-type center --transition-step 255
# Change zathura color palette
sed -i 's/catppuccin-latte/catppuccin-mocha/g' ~/dots/configs/zathura/zathurarc
# Change rofi colors
sed -i 's/latte.rasi/mocha.rasi/g' ~/dots/configs/rofi/config.rasi
# Change starship colors
sed -i 's/"catppuccin_latte"/"catppuccin_mocha"/g' ~/dots/configs/starship.toml
# Change glow theme
sed -i 's/latte/mocha/g' ~/dots/configs/glow/glow.yml
# Change bat theme
sed -i 's/latte/mocha/g' ~/dots/configs/bat/config
# Change hyprland colors
sed -i 's/dc8a78/f5e0dc/g' ~/dots/configs/hypr/hyprland.conf
sed -i 's/eff1f5/1e1e2e/g' ~/dots/configs/hypr/hyprland.conf
# Change waybar colors
sed -i 's/8839EF/CBA6F7/g' ~/dots/configs/waybar/config
sed -i 's/40A02B/A6E3A1/g' ~/dots/configs/waybar/config
sed -i 's/D20F39/F38BA8/g' ~/dots/configs/waybar/config
sed -i 's/04A5E5/89DCEB/g' ~/dots/configs/waybar/config
sed -i 's/E64553/EBA0AC/g' ~/dots/configs/waybar/config
sed -i 's/DF8E1D/F9E2AF/g' ~/dots/configs/waybar/config
# Reload waybar
killall waybar && waybar

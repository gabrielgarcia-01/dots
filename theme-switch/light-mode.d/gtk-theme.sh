#!/bin/sh

# Change gtk-theme and symlink gtk-4 files
gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Latte-Standard-Rosewater-Light
rm -rfv ~/.config/gtk-4.0/*
(cd /usr/share/themes/Catppuccin-Latte-Standard-Rosewater-Light/ && stow -t ~/.config/gtk-4.0 gtk-4.0)

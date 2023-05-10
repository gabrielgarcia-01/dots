#!/bin/sh

# Change gtk-theme and symlink gtk-4 files
gsettings set org.gnome.desktop.interface gtk-theme Catppuccin-Mocha-Standard-Rosewater-Dark
rm -rfv ~/.config/gtk-4.0/*
(cd /usr/share/themes/Catppuccin-Mocha-Standard-Rosewater-Dark/ && stow -t ~/.config/gtk-4.0 gtk-4.0)

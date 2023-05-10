#!/bin/sh

# Kill waybar
killall waybar
# Change waybar colors
sed -i 's/mocha/latte/g' ~/dots/configs/waybar/style.css
# Reload waybar
waybar

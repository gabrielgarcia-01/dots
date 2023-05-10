#!/bin/sh

# Change rofi colors
sed -i 's/latte.rasi/mocha.rasi/g' ~/dots/configs/rofi/config.rasi
sed -i 's/latte.rasi/mocha.rasi/g' ~/dots/configs/waybar/scripts/network/rofi-network-manager.rasi

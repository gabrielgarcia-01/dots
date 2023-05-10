#!/bin/sh

# Change rofi colors
sed -i 's/mocha.rasi/latte.rasi/g' ~/dots/configs/rofi/config.rasi
sed -i 's/mocha.rasi/latte.rasi/g' ~/dots/configs/waybar/scripts/network/rofi-network-manager.rasi

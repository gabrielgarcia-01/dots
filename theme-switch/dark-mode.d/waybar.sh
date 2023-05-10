#!/bin/sh

# Change waybar colors
sed -i 's/8839EF/CBA6F7/g' ~/dots/configs/waybar/config
sed -i 's/40A02B/A6E3A1/g' ~/dots/configs/waybar/config
sed -i 's/D20F39/F38BA8/g' ~/dots/configs/waybar/config
sed -i 's/04A5E5/89DCEB/g' ~/dots/configs/waybar/config
sed -i 's/E64553/EBA0AC/g' ~/dots/configs/waybar/config
sed -i 's/DF8E1D/F9E2AF/g' ~/dots/configs/waybar/config
sed -i 's/FE640B/FAB387/g' ~/dots/configs/waybar/config
# Reload waybar
killall waybar && waybar

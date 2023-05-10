#!/bin/sh

# Change waybar colors
sed -i 's/CBA6F7/8839EF/g' ~/dots/configs/waybar/config
sed -i 's/A6E3A1/40A02B/g' ~/dots/configs/waybar/config
sed -i 's/F38BA8/D20F39/g' ~/dots/configs/waybar/config
sed -i 's/89DCEB/04A5E5/g' ~/dots/configs/waybar/config
sed -i 's/EBA0AC/E64553/g' ~/dots/configs/waybar/config
sed -i 's/F9E2AF/DF8E1D/g' ~/dots/configs/waybar/config
sed -i 's/FAB387/FE640B/g' ~/dots/configs/waybar/config
# Reload waybar
killall waybar && waybar

#!/bin/sh

# Change dunst colors
sed -i 's/F5E0DC/DC8A78/g' ~/dots/configs/dunst/dunstrc
sed -i 's/1E1E2E/EFF1F5/g' ~/dots/configs/dunst/dunstrc
sed -i 's/CDD6F4/4C4F69/g' ~/dots/configs/dunst/dunstrc
sed -i 's/F38BA8/D20F39/g' ~/dots/configs/dunst/dunstrc
sed -i 's/F9E2AF/E5C890/g' ~/dots/configs/dunst/dunstrc
sed -i 's/FAB387/FE640B/g' ~/dots/configs/dunst/dunstrc
# Reload dunst
killall dunst && dunst

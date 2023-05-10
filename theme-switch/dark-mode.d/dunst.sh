#!/bin/sh

# Change dunst colors
sed -i 's/DC8A78/F5E0DC/g' ~/dots/configs/dunst/dunstrc
sed -i 's/EFF1F5/1E1E2E/g' ~/dots/configs/dunst/dunstrc
sed -i 's/4C4F69/CDD6F4/g' ~/dots/configs/dunst/dunstrc
sed -i 's/D20F39/F38BA8/g' ~/dots/configs/dunst/dunstrc
sed -i 's/E5C890/F9E2AF/g' ~/dots/configs/dunst/dunstrc
sed -i 's/FE640B/FAB387/g' ~/dots/configs/dunst/dunstrc
# Reload dunst
killall dunst && dunst

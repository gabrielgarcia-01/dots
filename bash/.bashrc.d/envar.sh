#!/bin/bash

# Change the default editor
EDITOR=/usr/bin/nvim
SUDO_EDITOR=/usr/bin/nvim
VISUAL=/usr/bin/nvim

export EDITOR
export SUDO_EDITOR
export VISUAL

# vi keybindings in bash
set -o vi

# Wayland fixes
MOZ_ENABLE_WAYLAND=1

#QT color palette
QT_QPA_PLATFORMTHEME=qt5ct

export MOZ_ENABLE_WAYLAND
export QT_QPA_PLATFORMTHEME

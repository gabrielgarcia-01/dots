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

# FZF_DEFAULT_OPTS
export FZF_DEFAULT_OPTS=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

export MOZ_ENABLE_WAYLAND
export QT_QPA_PLATFORMTHEME

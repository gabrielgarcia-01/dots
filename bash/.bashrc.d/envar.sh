#!/bin/sh

# Change the default editor
EDITOR=/usr/bin/nvim
SUDO_EDITOR=/usr/bin/nvim
VISUAL=/usr/bin/nvim

export EDITOR
export SUDO_EDITOR
export VISUAL

# vi keybindings in bash
set -o vi

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

[ -f "/home/gabriel/.ghcup/env" ] && source "/home/gabriel/.ghcup/env" # ghcup-env

PKG_CONFIG_PATH=/home/gabriel/hyprland-plugins/Hyprland/
export PKG_CONFIG_PATH

# silence the java warning
SILENT_JAVA_OPTIONS="$JDK_JAVA_OPTIONS"
unset JDK_JAVA_OPTIONS
alias java='java "$SILENT_JAVA_OPTIONS"'

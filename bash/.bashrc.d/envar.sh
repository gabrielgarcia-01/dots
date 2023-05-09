#!/bin/sh

# Change the default editor
export EDITOR=/usr/bin/nvim
export SUDO_EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# vi keybindings in bash
set -o vi

[ -f "/home/gabriel/.ghcup/env" ] && source "/home/gabriel/.ghcup/env" # ghcup-env

# silence the java warning
SILENT_JAVA_OPTIONS="$JDK_JAVA_OPTIONS"
unset JDK_JAVA_OPTIONS
alias java='java "$SILENT_JAVA_OPTIONS"'

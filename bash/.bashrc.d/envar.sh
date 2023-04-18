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

# java options
export JDK_JAVA_OPTIONS='Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# Wayland fixes
MOZ_ENABLE_WAYLAND=1

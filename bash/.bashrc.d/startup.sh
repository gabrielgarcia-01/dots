#!/bin/sh
# ----------------------------------------------------------------------------------
# system info
nitch

# starship prompt
eval "$(starship init bash)"

# zoxide
eval "$(zoxide init bash)"

# nvm
source /usr/share/nvm/init-nvm.sh

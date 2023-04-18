#
# ~/.bash_profile
#

# source .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# User specific environment and startup programs
# Languages
. "$HOME/.cargo/env"

export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# Clean Up PATH
PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

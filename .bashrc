# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
export FLUTTER="$HOME/flutter/bin"
export DART="$HOME/flutter/bin"
PGSQL="/usr/local/pgsql/bin"
POSTMAN="/usr/local/bin/Postman Agent"
ANDROID="$HOME/android-studio/bin"
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$ANDROID:$FLUTTER:$PGSQL:$POSTMAN:$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export EDITOR=nvim
export GCM_CREDENTIAL_STORE="gpg"

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias mux=tmuxinator
PS1="\e[0;36m\W\e[m -> "

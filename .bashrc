#!/bin/bash
#
# Default .bashrc file
# 
# Uncomment to force sourcing this file by non-interactive scripts
# export BASH_ENV=$HOME/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Short-circuit and return if we are in Thinlinc Startup
if [ -n "$TLPREFIX" -a -z "$TLPROFILE" ]; then
        return
fi

# User specific environment

# $HOME/.local/bin and $HOME/bin are already in $PATH, consider $PROJECT/bin
# export PATH="$PATH:$PROJECT/bin"

# Custom prompt: for interactive shells only.
if [[ $- == *i* ]]; then 
    HOSTNAME=$(hostname -f)
    export PS1='\[\e[1m\]\u@${HOSTNAME%.*.*.*}:[\W]\[\e[0m\] $ '
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions can go here:
#

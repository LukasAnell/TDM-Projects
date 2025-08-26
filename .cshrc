# .cshrc
# This file is sourced first by all [t]csh shells.

# User specific environment

# $HOME/.local/bin and $HOME/bin are already in $PATH, consider $PROJECT/bin
# set path = ( ${path:q} "$PROJECT/bin" )

# Short-circuit processing here if we are in Thinlinc startup
if ( $?TLPREFIX ) then
   if ( ! $?TLPROFILE ) then
      exit
   endif
endif

# Custom prompt: for interactive shells only.
if ( $?prompt ) then
	set promptchars = '$#'
	set prompt = '%B%n@%m.%${RCAC_CLUSTER}:[%c]%b %# '
endif

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# setenv SYSTEMD_PAGER ""


# User specific aliases and functions

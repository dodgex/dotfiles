# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lA'
alias l='ls $LS_OPTIONS -l'



STATUS="[\$(if [[ \$? == 0 ]]; then echo \"\[\033[1;32m\]\342\234\223\"; else echo \"\[\033[1;31m\]\342\234\227\"; fi)\[\033[0m\]]"
PS1="$STATUS \[\033[1;31m\]\u\[\033[0m\]@\[\033[1;33m\]\h\[\033[0m\]:\[\033[01;34m\]\w\[\033[1;31m\]\$\[\033[0m\] "

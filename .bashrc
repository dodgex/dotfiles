# colorize grep result
export GREP_COLOR='1;36'
export GREP_OPTIONS='--color=auto'

export LS_OPTIONS='--color=auto -h'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lA'
alias l='ls $LS_OPTIONS -l'
alias ..='cd ..'

# colorize man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# promt
STATUS="[\$(if [[ \$? == 0 ]]; then echo \"\[\033[1;32m\]\342\234\223\"; else echo \"\[\033[1;31m\]\342\234\227\"; fi)\[\033[0m\]]"
PS1="$STATUS \[\033[1;31m\]\u\[\033[0m\]@\[\033[1;33m\]\h\[\033[0m\]:\[\033[01;34m\]\w\[\033[1;31m\]\$\[\033[0m\] "

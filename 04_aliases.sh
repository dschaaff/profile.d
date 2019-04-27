#!/bin/bash
#-------
# Bash Aliases
#-------

# SOCKS Proxy connection to the Debian VM
#alias debvm='ssh -D9999 -Xl root 192.168.239.132'

# SSH through a SOCKS proxy
#alias pssh='ssh -o "ProxyCommand /usr/bin/nc -x localhost:9999 %h %p"'

# Add some colors to grep
alias grep='grep --color=auto'

#
alias ll='ls -l'
alias vim='nvim'
alias vi='nvim'
alias kcl='kubectl'
alias ktl='kubectl'
#-------
# End Aliases
#-------

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
# terraform switcher
cdtfswitch(){
  builtin cd "$@";
  cdir=$PWD;
  if [ -f "$cdir/.tfswitchrc" ]; then
    tfswitch
  fi
}
alias cd='cdtfswitch'
#
alias ll='ls -l'
alias vim='nvim'
alias vi='nvim'
alias kcl='kubectl'
alias ktl='kubectl'

alias consul-dev='CONSUL_HTTP_ADDR=https://consul-0.dev.cordialdev.com:8501 CONSUL_CACERT=/Users/danielschaaff/.consul/dev/consul-agent-ca.pem CONSUL_CLIENT_CERT=/Users/danielschaaff/.consul/dev/dev-us-west-2-cli-consul-0.pem CONSUL_CLIENT_KEY=/Users/danielschaaff/.consul/dev/dev-us-west-2-cli-consul-0-key.pem consul'

alias vault-dev='VAULT_ADDR=https://vault.dev.cordialdev.com:8200 VAULT_CACERT=~/.vault-cli/dev/ca.crt vault'
#-------
# End Aliases
#-------

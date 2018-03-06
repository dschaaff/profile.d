#-------
# Bash Aliases
#-------

# Get to the $UNIX_HOME directory quickly
#alias .u='cd $UNIX_HOME'

# SOCKS Proxy connection to the Debian VM
#alias debvm='ssh -D9999 -Xl root 192.168.239.132'

# SSH through a SOCKS proxy
#alias pssh='ssh -o "ProxyCommand /usr/bin/nc -x localhost:9999 %h %p"'

# SSH to a POC EC2 instance
#alias ec2_ssh='ssh -l root -i ~/.unix/identities/rosetta-ec2'

# SSH to a Cencosud *temporary* EC2 instance
#alias sud_ssh='ssh -l root -i ~/.unix/identities/cencosud-ec2.pem'
#alias sud_scp="scp -o \"IdentityFile $HOME/.unix/identities/cencosud-ec2.pem\" -o \"User root\""

# Add some colors to grep
alias grep='grep --color=auto'

#
alias ll='ls -l'
# nvim > vim
alias vim='nvim'
#-------
# End Aliases
#-------

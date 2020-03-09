#!/bin/bash
#-------
# Bash Variables
#-------

#UNIX_HOME=~/.dotfiles

# Ruby / JRuby here

# JAVA Options
JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME
#export JAVA_OPTS="-Xms64m -Xmx256m -server -Djava.awt.headless=true"

# Bash options
export CLICOLOR=1

# Editor stuff (make sure this is set to a working editor"
export EDITOR="nvim"

# gpg
export GPG_TTY=$(tty)

# node version manager
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1

#-------
# End Variables
#-------

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
# Bash prompt style:
#    Choices: "git_fancy", "fancy", "git_plain", "plain", "default"
#    To add a new one, edit 05_prompt.sh
export PROMPT_STYLE="git_fancy"

# Editor stuff (make sure this is set to a working editor"
export EDITOR="nvim"

# gpg
export GPG_TTY="tty"

export AWS_DEFAULT_REGION=us-east-1

# node version manager
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# kubectl
export KUBECONFIG=$HOME/.kube/config-eks-dev:$HOME/.kube/config-old-dev:$HOME/.kube/config-docker-desktop
#-------
# End Variables
#-------

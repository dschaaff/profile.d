#-------
# Bash Variables
#-------

#UNIX_HOME=~/.dotfiles

# Ruby / JRuby here
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.5.1
source /usr/local/share/chruby/auto.sh
# JAVA Options
export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_OPTS="-Xms64m -Xmx256m -server -Djava.awt.headless=true"

# Bash options
export CLICOLOR=1
# Bash prompt style:
#    Choices: "git_fancy", "fancy", "git_plain", "plain", "default"
#    To add a new one, edit 05_prompt.sh
export PROMPT_STYLE="git_fancy"

# Editor stuff (make sure this is set to a working editor"
export EDITOR="vim"

# gpg
export GPG_TTY="tty"

export AWS_DEFAULT_REGION=us-east-1

#kubernetes
export KUBECONFIG=$KUBECONFIG:~/.kube/config-production
#-------
# End Variables
#-------

#!/bin/bash
source /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-prompt.sh
kube_prompt()
{
   kubectl_current_context=$(kubectl config current-context)
   kubectl_current_ns=$(kubectl config view --minify --output 'jsonpath={..namespace}')
   k8s_symbol=$'\xE2\x8E\x88 '
   kubectl_prompt="(${blue}${k8s_symbol}${red}${kubectl_current_context}${NC}:${cyan}${kubectl_current_ns}${NC})"
   echo $kubectl_prompt
}
function __prompt_command(){

  local ex=$?
  local PROMPT_LAST_COMMAND_STATE=$ex
  if [[ "${PROMPT_LAST_COMMAND_STATE:-0}" = 0 ]]; then
    LAST_COMMAND_INDICATOR="${green} ✔";
  else
    LAST_COMMAND_INDICATOR="${red} ✘ $ex${NC}";
  fi
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWCOLORHINTS=true
  export GIT_PS1_UNTRACKEDFILES=true
  PS1="┌─${LAST_COMMAND_INDICATOR} [\[\[${yellow}\]\W\[${NC}\]]"
  PS1="$PS1 $(kube_prompt)"
  PS1="$PS1${red}\$(__git_ps1)${NC}"
  PS1="$PS1\n└─▶ \[\033[1;34m\]$(date +%H:%M) \$ \[\033[0;0m\]"
}

#-------
# Bash Prompt Settings
#-------
case $PROMPT_STYLE in
"git_fancy")
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWCOLORHINTS=true
    export GIT_PS1_UNTRACKEDFILES=true
    export PROMPT_COMMAND='__prompt_command'
    ;;
"git_plain")
    export PS1='\h:\W $(__git_ps1)\$ '
    ;;
"fancy")
    export PS1='[\[\033[91;0;33m\]\u\[\033[91;0m\]@\[\033[91;0;32m\]\h\[\033[91;0m\]:\[\033[91;0;36m\]\W\[\033[91;0m\]] \$ '
    ;;
"plain")
    export PS1='\h:\W \$ '
    ;;
*)f
    ;;
esac
# source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
#   PS1='$(kube_ps1)\n'$PS1
#-------
# End Prompt Settings
#-------
# if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#   __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
#   GIT_PROMPT_ONLY_IN_REPO=0
#   GIT_PROMPT_THEME=Solarized
#   GIT_PROMPT_END=$PS1=$(kube_prompt)
#   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
# fi



#-------
# Bash Prompt Settings
#-------


case $PROMPT_STYLE in
"git_fancy")
    export PS1="[\[\[${blue}\]\w\[${NC}\]] \[\033[00;35m\]\$(__git_ps1)\[\033[00m\]\$ "
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
*)
    ;;
esac

#-------
# End Prompt Settings
#-------
# if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#   __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
#   GIT_PROMPT_ONLY_IN_REPO=1
#   source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
# fi
# source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
#   PS1='$(kube_ps1)'$PS1

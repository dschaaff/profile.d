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

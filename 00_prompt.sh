#!/bin/bash

function prompt_command {
  local last_cmd=$?
  local txtreset='$(tput sgr0)'
  local txtbold='$(tput bold)'
  local txtblack='$(tput setaf 0)'
  local txtred='$(tput setaf 1)'
  local txtgreen='$(tput setaf 2)'
  local txtyellow='$(tput setaf 3)'
  local txtblue='$(tput setaf 4)'
  local txtpurple='$(tput setaf 5)'
  local txtcyan='$(tput setaf 6)'
  local txtwhite='$(tput setaf 7)'
  local GREEN="\[\033[0;32m\]"
  local CYAN="\[\033[0;36m\]"
  local BCYAN="\[\033[1;36m\]"
  local BLUE="\[\033[0;34m\]"
  local GRAY="\[\033[0;37m\]"
  local DKGRAY="\[\033[1;30m\]"
  local WHITE="\[\033[1;37m\]"
  local RED="\[\033[0;31m\]"
  local GREEN="\[\033[0;32m\]"
  yellow='\033[91;0;33m'
  YELLOW='\033[91;1;33m'
  purple='\033[91;0;35m'
  # return color to Terminal setting for text color
  local DEFAULT="\[\033[0;39m\]"
  local BOLD="\[\033[1;39m\]"
  # unicode "✗"
  local fancyx='\342\234\227'
  # unicode "✓"
  local checkmark='\342\234\223'
  # kubernetes ⎈
  k8s_symbol=$'\xE2\x8E\x88 '

  if [ $last_cmd -eq 0 ]; then # set an error string for the prompt, if applicable
    LAST_COMMAND_INDICATOR="${GREEN}\342\234\223${DEFAULT}"
  else
    LAST_COMMAND_INDICATOR="${RED}\342\234\227($last_cmd)${DEFAULT}"
  fi

  if [ -z ${AWS_PROFILE+x} ]; then
    AWS_PROMPT=""
  else
    AWS_PROMPT="[${yellow}AWS:$AWS_PROFILE${DEFAULT}] "
  fi

  if [ -d ~/.kube ]; then
    kubectl_current_context=$(kubectl config current-context)
    kubectl_current_ns=$(kubectl config view --minify --output 'jsonpath={..namespace}')
    k8s_symbol=$'\xE2\x8E\x88 '
    kubectl_prompt="[${BLUE} ${k8s_symbol}${DEFAULT}|${purple}${kubectl_current_context}${DEFAULT}:${txtblue}${kubectl_current_ns}${DEFAULT}]\n"
  else
    kubectl_prompt=""
  fi

  PreGitPS1="${kubectl_prompt}[${YELLOW}\[\w\]${DEFAULT}]"
  PostGitPS1="\n${BOLD}└─▶ $(date +%H:%M) ${AWS_PROMPT}$LAST_COMMAND_INDICATOR \$ "
  
  export GIT_PS1_SHOWCOLORHINTS=1
  export GIT_PS1_SHOWDIRTYSTATE=1           # '*'=unstaged, '+'=staged
  export GIT_PS1_SHOWSTASHSTATE=1           # '$'=stashed
  export GIT_PS1_SHOWUNTRACKEDFILES=1       # '%'=untracked
  export GIT_PS1_SHOWUPSTREAM="verbose"     # 'u='=no difference, 'u+1'=ahead by 1 commit
  export GIT_PS1_STATESEPARATOR=''          # No space between branch and index status
  export GIT_PS1_DESCRIBE_STYLE="describe"  # detached HEAD style:
  #  contains      relative to newer annotated tag (v1.6.3.2~35)
  #  branch        relative to newer tag or branch (master~4)
  #  describe      relative to older annotated tag (v1.6.3.1-13-gdd42c2f)
  #  default       exactly eatching tag
  __git_ps1 "$PreGitPS1" "$PostGitPS1"
}

PROMPT_COMMAND='prompt_command'
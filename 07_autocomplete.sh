# This file should store all the bash autocomplete functions

# Autocomplete functions
#_vpn_complete_() {
#    local cmd="${1##*/}"
#    local word=${COMP_WORDS[COMP_CWORD]}
#    local line=${COMP_LINE}
#    local vpn_type=`echo ${word} | awk -F':' '{ print $1 }'`
#
#    if [[ "$word" == *:* ]]; then
#        COMPREPLY=($(compgen -W "`vpn list | grep -E "^${vpn_type}" | awk -F':' '{ print $2 }' | grep -E '^[a-z0-9]' --color=none`" -- "`echo ${word} | awk -F':' '{ print $2 }'`"))
#    elif [[ "$line" == *start* ]] || [[ "$line" == *stop* ]] || [[ "$line" == *fix* ]]; then
#        COMPREPLY=($(compgen -W "`vpn list | awk '{ print $1 }' | grep -E '^[a-z0-9]' --color=none`" -- "${word}"))
#    else
#        COMPREPLY=($(compgen -W "`vpn help | awk '{ print $1 }' | grep -E '^[a-z]' --color=none`" -- "${word}"))
#    fi
#}

# autocomplete ssh commands
#complete -W "`grep -E '^[0-9]' /etc/hosts | sed -E 's/[[:space:]]+/\'$'\n/g' | grep -E '^[0-9a-zA-Z]' | sort | uniq`" ssh ec2_ssh
#complete -W "`grep -E '^#?[0-9].*sv[dqspn]36' /etc/hosts | sed -E 's/[[:space:]]+/\'$'\n/g' | grep -E '^[0-9a-zA-Z]' | sort | uniq`" sud_ssh

# VPN
#complete -F _vpn_complete_ vpn

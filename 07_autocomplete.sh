# This file should store all the bash autocomplete functions
# autocomplete ssh commands
#complete -W "`grep -E '^[0-9]' /etc/hosts | sed -E 's/[[:space:]]+/\'$'\n/g' | grep -E '^[0-9a-zA-Z]' | sort | uniq`" ssh ec2_ssh
#complete -W "`grep -E '^#?[0-9].*sv[dqspn]36' /etc/hosts | sed -E 's/[[:space:]]+/\'$'\n/g' | grep -E '^[0-9a-zA-Z]' | sort | uniq`" sud_ssh


# makefile target autocomplete
# complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

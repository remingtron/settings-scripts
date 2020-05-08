#!/bin/bash
source ~/.profile

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/remington/.gvm/bin/gvm-init.sh" ]] && source "/Users/remington/.gvm/bin/gvm-init.sh"

export PATH=$PATH:/usr/local/bin

export NVM_DIR="$HOME/.nvm"
. /usr/local/Cellar/nvm/0.32.1/nvm.sh

RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$RESET\n\A $GREEN\u@\h $PURPLE\w $CYAN\$(__git_ps1 '(%s)')\n$RED\$$RESET "

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CLICOLOR=1

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

alias gitdeletemerged="git branch --merged | grep -v master | xargs -n 1 git branch -d"
alias ll="ls -l"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias co='git co'
alias pull='git pull -p'
alias br='git br'
alias st='git st'
alias lg='git lg --max-count=10'

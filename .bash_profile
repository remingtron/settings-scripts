#!/bin/bash
source ~/.profile

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/remington/.gvm/bin/gvm-init.sh" ]] && source "/Users/remington/.gvm/bin/gvm-init.sh"

export PATH=$PATH:/usr/local/bin

export NVM_DIR="$HOME/.nvm"
. /usr/local/Cellar/nvm/0.32.1/nvm.sh

source ~/git_tools/git-prompt.sh
source ~/git_tools/git-completion.bash
PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '

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

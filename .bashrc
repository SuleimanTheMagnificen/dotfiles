#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vifmrun="$HOME/.config/vifm/scripts/vifmrun ."
#alias v="/usr/bin/vifmimg/vifmrun ."
alias cddoc="cd $HOME/Documents"
alias cdproj="cd $HOME/Projects"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

#export XDG_CONFIG_HOME="$HOME/.config"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
#export ANI_CLI_PLAYER=""
export PATH=$PATH:/home/r11y5/.local/bin
#export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

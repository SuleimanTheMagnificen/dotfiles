#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias v="nvim"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias yt-py='/home/r11y5/.venvs/PyVEnv/bin/yt-dlp'
alias pyvenv='$HOME/.venvs/PyVEnv/bin/python3'
alias pyvenv-activate='python3 -m venv $HOME/.venvs/PyVEnv/bin/python3'
alias yt-x="yt-x -p vlc --preview"

### Change PWD to Directories ###
alias dproj='$HOME/projects/'
alias dconfs='$HOME/.config/'
alias dviconf='cd $HOME/.config/nvim/'
#################################
PS1='[\u@\h \W]\$ '

#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#export QT_IM_MODULES=wayland;ibus
#export XIM_PROGRAM=/urs/bin/ibus-daemon -drx

export RANGER_LOAD_DEFAULT_RC=FALSE
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

. "$HOME/.local/bin/env"
. "$HOME/.cargo/env"
. "$HOME/.deno/env"
source /home/r11y5/.local/share/bash-completion/completions/deno.bash

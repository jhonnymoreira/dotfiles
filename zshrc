export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gitster"
export LANG=en_US.UTF-8
HIST_STAMPS="dd.mm.yyyy"
export UPDATE_ZSH_DAYS=1
plugins=(git)

source "$ZSH/oh-my-zsh.sh"

export PATH="$HOME/.local/share/umake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

force_color_prompt=yes

# RBenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# GVM
# export GVM_DIR="$HOME/.gvm"
# [[ -s "$GVM_DIR/scripts/gvm" ]] && source "$GVM_DIR/scripts/gvm"

# Set Sublime Text as the main editor
export EDITOR="subl"

# Load aliases
source $HOME/.zsh_aliases
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  docker
  docker-compose
  git
  httpie
  rust
)

source $ZSH/oh-my-zsh.sh

export DOTFILES_ZSH_PATH="$HOME/dotfiles/zsh"

source $DOTFILES_ZSH_PATH/zshenv
source $DOTFILES_ZSH_PATH/zshalias

. $DOTFILES_ZSH_PATH/bootstrap.sh
. $DOTFILES_ZSH_PATH/functions.sh

precmd_functions+=(keep_current_path)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="blackcoffee"
plugins=(docker git)

source $ZSH/oh-my-zsh.sh

export DOTFILES_PATH="$HOME/dotfiles"

. $DOTFILES_PATH/zsh/bootstrap.sh

source $DOTFILES_PATH/zsh/zshenv
source $DOTFILES_PATH/zsh/zshalias
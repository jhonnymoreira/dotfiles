# PATH updates
set PATH $HOME/.rbenv/bin $PATH

# ENV vars
set -xg EDITOR vim
set -xg DOTFILES_PATH $HOME/dotfiles
set -xg NVM_DIR $HOME/.nvm

# rbenv loading
status --is-interactive; and source (rbenv init -|psub)

# load a few aliases
source $DOTFILES_PATH/aliases.fish

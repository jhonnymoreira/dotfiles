BOOTSTRAP_PATH="$DOTFILES_PATH/zsh/bootstrap"

. $BOOTSTRAP_PATH/asdf.sh
. $BOOTSTRAP_PATH/aws.sh
. $BOOTSTRAP_PATH/cargo.sh
. $BOOTSTRAP_PATH/ghcup.sh
[[ $OSTYPE == 'darwin'* ]] && . $BOOTSTRAP_PATH/homebrew.sh
. $BOOTSTRAP_PATH/nvm.sh
. $BOOTSTRAP_PATH/personal-access-tokens.sh
. $BOOTSTRAP_PATH/pnpm.sh
. $BOOTSTRAP_PATH/pyenv.sh
. $BOOTSTRAP_PATH/rbenv.sh
. $BOOTSTRAP_PATH/starship.sh

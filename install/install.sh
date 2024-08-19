export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# install oh my zsh
if test ! $(which omz); then
	/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Install brew stuff.
. "$DOTFILES_DIR/install/brew.sh"

# Symlinks
. "$DOTFILES_DIR/install/symlinks.sh"


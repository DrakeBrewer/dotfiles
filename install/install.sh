export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Install brew stuff.
. "$DOTFILES_DIR/install/brew.sh"

# Symlinks
. "$DOTFILES_DIR/install/symlinks.sh"


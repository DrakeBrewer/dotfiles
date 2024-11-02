CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# ln -siv "$DOTFILES_DIR/dots/.gitconfig" ~
# ln -siv "$DOTFILES_DIR/dots/.zshrc" ~

ln -siv "$DOTFILES_DIR/alacritty" "$CONFIG_HOME"
ln -siv "$DOTFILES_DIR/mise" "$CONFIG_HOME"
ln -siv "$DOTFILES_DIR/nvim" "$CONFIG_HOME"
ln -siv "$DOTFILES_DIR/thefuck" "$CONFIG_HOME"
ln -siv "$DOTFILES_DIR/zellij" "$CONFIG_HOME"


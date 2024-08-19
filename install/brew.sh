echo "Installing Homebrew..."

# install homebrew if not already installed
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"

	brew update
	brew upgrade
fi

echo "Homebrew installed!"

sleep 1

echo "Installing formulae and casks..."

brew tap homebrew/bundle
brew bundle install --file "~/.dotfiles/install/Brewfile"

echo "Formulae and casks installed!"


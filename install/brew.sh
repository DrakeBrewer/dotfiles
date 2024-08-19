echo "Installing Homebrew..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

echo "Homebrew installed!"

sleep 1

echo "Installing formulae and casks..."

brew bundle install --file "./Brewfile"

echo "Formulae and casks installed!"


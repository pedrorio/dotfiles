#!/bin/sh

ln -sf "$(pwd)"/.zshrc ~/.zshrc
ln -sf "$(pwd)"/.gitconfig ~/.gitconfig
ln -sf "$(pwd)"/.gitignore ~/.gitignore
ln -sf "$(pwd)"/.gitmessage ~/.gitmessage
ln -sf "$(pwd)"/.gitconfig.pedrorio ~/Code/pedrorio/.gitconfig.pedrorio
ln -sf "$(pwd)"/.gitconfig.matilderosa ~/Code/matilderosa/.gitconfig.matilderosa
ln -sf "$(pwd)"/Brewfile ~/Brewfile

if ! which brew >& /dev/null;then
  echo Homebrew is not installed!
  echo Install now...
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade
brew bundle
brew cleanup
brew doctor
#!/bin/bash

ln -sf "$(pwd)"/config/Brewfile ~/Brewfile

if ! which brew >& /dev/null;then
  echo Homebrew is not installed!
  echo Install now...
  /bin/bash -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
# test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

brew update
brew upgrade
brew bundle
brew cleanup
brew doctor

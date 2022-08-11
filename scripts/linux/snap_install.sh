#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

install pycharm-professional --classic
install clion --classic
install webstorm --classic
install datagrip --classic

install chromium

install slack --classic
install zoom-client

install notion-snap
install figma-linux

install sublime-text --classic

install vlc

install google-cloud-sdk

install 1password
install yubioath-desktop

install mqttx
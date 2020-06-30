#!/bin/bash

sudo ln -sf "$(pwd)"/config/.zshrc ~/.zshrc
sudo ln -sf "$(pwd)"/config/.gitconfig ~/.gitconfig
sudo ln -sf "$(pwd)"/config/.gitignore ~/.gitignore
sudo ln -sf "$(pwd)"/config/.gitmessage ~/.gitmessage
sudo ln -sf "$(pwd)"/config/.gitconfig.pedrorio ~/code/pedrorio/.gitconfig
sudo ln -sf "$(pwd)"/config/.tmux.conf ~/code/pedrorio/.tmux.conf

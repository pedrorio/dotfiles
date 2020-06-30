#!/bin/bash

anyenv install pyenv
pyenv install 3.7.0
pyenv local 3.7.0
pyenv global 3.7.0
pyenv rehash

anyenv install nodenv
nodenv install 14.4.0
nodenv local 14.4.0
nodenv global 14.4.0
nodenv rehash

curl -o- -L https://yarnpkg.com/install.sh | bash

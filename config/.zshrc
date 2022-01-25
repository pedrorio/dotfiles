eval "$(/opt/homebrew/bin/brew shellenv)"

# editors
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR=micro
   export EDITOR="$VISUAL"
else
	export VISUAL=st
	export EDITOR="$VISUAL"
fi

# aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# config
export LANG=en_US.UTF-8

# antigen
source $(brew --prefix)/share/antigen/antigen.zsh
antigen init "${HOME}/.antigenrc"


# gpg
export GPG_TTY=$(tty)
if [ -S "${HOME}/.gnupg/S.gpg-agent.ssh" ]; then
  export SSH_AUTH_SOCK=${HOME}/.gnupg/S.gpg-agent.ssh
fi
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# compiler defaults
# export CC=gcc-11
# export CXX=g++-11
# export OMPI_CC=gcc-11
# export OMPI_CXX=g++-11

# export CPPFLAGS=-fno-stack-check
export CPPFLAGS="-Wno-error=class-memaccess -Wno-error=format -Wno-error=format-truncation -Wno-error=format-overflow -Wno-error=implicit-function-declaration"
export CXXFlags=-std=c++11

# export CPATH="$(brew --prefix)/include:$(xcrun --show-sdk-path)/usr/include"
# export LIBRARY_PATH="$(brew --prefix)/lib:$(xcrun --show-sdk-path)/usr/lib"

# export CPPFLAGS="-I$(brew --prefix)/include -I$(xcrun --show-sdk-path)/usr/include"
# export CFLAGS="-I$(brew --prefix)/include -I$(xcrun --show-sdk-path)/usr/include"
# export CXXFLAGS="-I$(brew --prefix)/include -I$(xcrun --show-sdk-path)/usr/include"
# export LDFLAGS="-L$(brew --prefix)/lib -L$(xcrun --show-sdk-path)/usr/lib"

export PATH=$HOME/.espressif/tools/xtensa-esp32-elf/esp-2021r2-8.4.0/xtensa-esp32-elf/bin:$PATH
export IDF_PATH="$HOME/esp/esp-idf"
# export IDF_PATH="$HOME/Code/homeit/firmware/v1/esp-wroom32/esp-idf"

alias get_idf=". ${IDF_PATH}/export.sh"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

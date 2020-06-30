export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR=micro
   export EDITOR="$VISUAL"
else
	export VISUAL=micro
	export EDITOR="$VISUAL"
fi

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

export UPDATE_ZSH_DAYS=5
export HOMEBREW_NO_ANALYTICS=1
export LANG=en_US.UTF-8
export GPG_TTY=$(tty)

ZSH_THEME="spaceship"

plugins=(
	git gitfast git-extras
	last-working-dir
	common-aliases
	history-substring-search
	rbenv nodenv pyenv
	bundler	gem pip yarn
	osx brew
	aws
	docker kubectl
	web-search
	colored-man-pages colorize
	zsh-completions zsh-autosuggestions zsh-syntax-highlighting
)

SPACESHIP_PROMPT_ORDER=(
  user host package node ruby
# pyenv
# aws
# kubecontext
  docker dir git time battery
  exec_time exit_code char
# line_sep      # Line break
# jobs          # Background jobs indicator
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_SHOW_FULL=true
SPACESHIP_BATTERY_SHOW=always

source "$ZSH/oh-my-zsh.sh"

# export ANYENV_DEFINITION_ROOT="$HOME/.anyenv/anyenv-install"
export PATH="$HOME/.anyenv/bin:$PATH"

eval "$(anyenv init -)"

#export PATH="/usr/local/sbin:$PATH"

export CC=gcc-9
export CXX=g++-9

export OMPI_CC=gcc-9
export OMPI_CXX=g++-9

#export CC=/usr/bin/clang
#export CXX=/usr/bin/clang++

#export CFLAGS=-fno-stack-check
#export CXXFLAGS=-fno-stack-check
#export MACOSX_DEPLOYMENT_TARGET=10.14

export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

export ZSH="/Users/pedrorio/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
	git # completions and aliases
	gitfast # git-extras completions
	git-extras # completions

	last-working-dir # keeps track of the last used directory and automatically jumps to it for new shells
	common-aliases # collection of useful zsh aliases
	history-substring-search

	rbenv # completions
	nodenv # completions
	pyenv # completions

	bundler # creates shell aliases
	gem # completions for the gem command

	pip # completions
	
	osx
	brew # completions
	
	aws
	docker # auto complete arguments and options for all docker commands.
	kubectl # autocompletion and aliases
	
	yarn # completions
	
	web-search
	colored-man-pages
	colorize

	zsh-completions # completions
	zsh-autosuggestions # completions
	zsh-syntax-highlighting # highligting
)

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  pyenv         # Pyenv section
  
# aws           # Amazon Web Services section
# kubecontext   # Kubectl context section
  docker        # Docker section
# line_sep      # Line break
# jobs          # Background jobs indicator
  
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  time          # Time stamps section
  battery       # Battery level and status
  exec_time     # Execution time
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_SHOW_FULL=true
SPACESHIP_BATTERY_SHOW=always

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='micro'
else
export EDITOR='webstorm'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8

export GPG_TTY=$(tty)

source $ZSH/oh-my-zsh.sh

. /Users/pedrorio/.kerl/versions/21.0/activate
eval "$(anyenv init -)"

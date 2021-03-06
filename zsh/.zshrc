# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/seabre/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
export GOPATH="$HOME/go"
export PATH="$HOME/miniconda2/bin:$HOME/applications/access2csv/target/appassembler/bin:$HOME/applications/DataGrip-2017.1.3/bin:$HOME/.rbenv/bin:$HOME/bin:$HOME/bin/git-recall:$HOME/bin/wireless-info:$GOPATH/bin:$HOME/.config/npm/node_modules/bin:$PATH"
eval "$(rbenv init -)"
alias view-md='view-markdown() { cat $1 | pandoc -f markdown -t html | lynx -stdin };view-markdown'
alias simple-server='python -m SimpleHTTPServer'

# rubocop run on current commit
alias rcc='git diff --name-only HEAD | grep '\.rb$' | xargs bundle exec rubocop'

function img { for image in "$@"; do convert -thumbnail $(tput cols) "$image" txt:- | awk -F '[)(,]' '!/^#/{gsub(/ /,"");printf"\033[48;2;"$8";"$9";"$10"m "}'; echo -e "\e[0;0m"; done ;}
function extract-palette() { convert "$1" -resize 300x -dither None -colors "$2" txt: | tail -n +2 | awk -F '  ' '{ if (!seen[$2]++) print $2 }'; }

# Show git file change history. Also works with directories
alias gfh='git log --all --name-status -- '

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/seabre/lib
# Compile flags sometimes needed
#export LDFLAGS="-L/home/seabre/lib"
#export CFLAGS="-I/home/seabre/include"
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

PATH="/home/seabre/bin/terminus/vendor/bin:$PATH"

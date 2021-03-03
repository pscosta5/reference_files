# Place in ~/.zshrc
# Place environmental variables in ~/.zshenv and keep private
# Good summary on what to keep in each of the zsh dotfiles:
# https://unix.stackexchange.com/a/487889

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="pure"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# Poetry
# https://github.com/python-poetry/poetry
# ``curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python``
# ``mkdir $ZSH_CUSTOM/plugins/poetry``
# ``poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry``

# zsh-autosuggestion
# https://github.com/zsh-users/zsh-autosuggestions
# ``git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions``

# zsh-autocomplete
# https://github.com/marlonrichert/zsh-autocomplete
# ``git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/.oh-my-zsh/custom/plugins/zsh-autocomplete``

# pyenv
# https://github.com/pyenv/pyenv#installation
# https://github.com/pyenv/pyenv-virtualenv
# ``brew install pyenv``
# ``brew install openssl readline sqlite3 zlib
# ``brew install pyenv-virtualenv

# Do this before pyenv plugin to supersede Facebook pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

plugins=(
    docker
    docker-compose
    fast-syntax-highlighting
    git
    pip
    poetry
    pyenv
    python
    virtualenv
    zsh-autocomplete
    zsh-autosuggestions
    zsh-edit
)

# Functions
fpath+=("$HOME/.config/zsh/functions")
autoload -Uz $HOME/.config/zsh/functions/*
# Completions
fpath+=("$HOME/.config/zsh/completions")
autoload -Uz $HOME/.config/zsh/completions/*

# fast-syntax-highlighting
# https://github.com/zdharma/fast-syntax-highlighting
# ``git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting``
# Run `fast-theme ~/.config/material_syntax.ini`

# zsh-autocomplete
# ``git clone https://github.com/marlonrichert/zsh-autocomplete.git ~/.oh-my-zsh/custom/plugins/zsh-autocomplete``
# This should run berfore oh-my-zsh.sh is sourced
# Have zsh-automplete fill in partial completions
zstyle ':autocomplete:tab:*' insert-unambiguous yes
# Have zsh-autocomplete play nice with fzf
zstyle ':autocomplete:tab:*' fzf yes

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Move to project root
alias root='cd "$(git rev-parse --show-toplevel)"'
# Remove formatting from text
alias unformat="pbpaste | pbcopy"
# Reload zsh, as if starting a new shell
alias reload="exec -l zsh"

# Enable completions for packages that use argcomplete (nox, pipx, pytest)
autoload -U bashcompinit
bashcompinit

# Bind keys
# 0x18 and 0x7f delete everything to the left of the cursor
bindkey "^X\\x7f" backward-kill-line
# 0x18 0x1f are redo
bindkey "^X^_" redo

# If not a tmux session, start one
# Do not start a tmux session if a terminal is started by vscode
if [[ -z "$TMUX" ]] && it2check && [[ -z "$TERM_PROGRAM" ]] && { [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; } ; then
  tmux -CC
fi

# Add go packages to path
export PATH="$PATH:/home/pawlu/go/bin"

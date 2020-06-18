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
# ``mkdir $ZSH/plugins/poetry``
# ``poetry completions zsh > $ZSH/plugins/poetry/_poetry``

# Conda
# https://github.com/conda/conda
# ``git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion``
# And init step below

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
# This should be last to overide conda paths

plugins=(
    brew
    conda-zsh-completion
    docker
    docker-compose
    fast-syntax-highlighting
    git
    osx
    pip
    poetry
    pyenv
    python
    virtualenv
    # zsh-autocomplete
    zsh-autosuggestions
)

# fast-syntax-highlighting
# https://github.com/zdharma/fast-syntax-highlighting
# ``git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting``
# Run `fast-theme ~/.config/material_syntax.ini`

# Have zsh-autocomplete play nice with fzf
# zstyle ':autocomplete:tab:*' completion fzf

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

# Uninstall all pip installed packages in current environment
alias pip_uninstall_all="python -m pip freeze --local | xargs pip uninstall --yes"
# Upgrade all pip packages in an environment
alias pip_upgrade_all="python -m pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install --upgrade"
# Upgrade all pip installed packages in a conda environment
alias conda_pip_upgrade_all="conda env export | yq -r '.dependencies[-1].pip[]' | sed 's/==.*//' | xargs python -m pip install --upgrade"
# Make a new data science project
alias new_ds="cookiecutter https://github.com/drivendata/cookiecutter-data-science"
# Remove formatting from text in 
alias unformat="pbpaste | pbcopy"
# Reload zsh, as if starting a new shell
alias reload="exec -l zsh"
# List Jupyter kernels
alias list_kernels="jupyter kernelspec list"
# Activate environment with notebook and start Jupyter Lab
alias notebook="conda activate notebook && jupyter lab"
# Interactive tree view
alias twf="twf \
           --bind=\"left::tree:parent;tree:close,shift-up::preview:up,up::tree:prev,down::tree:next,shift-down::preview:down,right::tree:open;tree:next\" \
           --previewCmd=\"bat --color=always {}\" \
           --locateCmd='fzf --preview\"bat --style=numbers --color=always {} | head -500\"' \
           --height=0.5"



# >>> conda initialize >>>
# https://docs.conda.io/en/latest/miniconda.html
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Conda completion
# https://github.com/esc/conda-zsh-completion/blob/master/_conda
# Should come after ``source $ZSH/oh-my-zsh.sh`` line
autoload -U compinit && compinit

# Add Visual Studio Code (code)
# https://code.visualstudio.com/
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Poetry
# https://python-poetry.org/docs/
# ``curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python``
export PATH="$HOME/.poetry/bin:$PATH"

# Starship theme
eval "$(starship init zsh)"


# fd
# https://github.com/sharkdp/fd
# ``brew install fd``
alias fd="fd --hidden --follow"

# Bat
# https://github.com/sharkdp/bat
# ``brew install bat``
export BAT_THEME="OneHalfDark"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Pipx
# https://github.com/pipxproject/pipx
# ``brew install pipx``
# ``pipx ensurepath``
# ``pipx completions``
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

# Nox
# https://github.com/theacodes/nox
# ``pipx install nox``
# Like pipx, needs bashcompinit enabled
eval "$(register-python-argcomplete nox)"

# Dephell
# https://github.com/dephell/dephell
# ``pipx install "dephell[all]"
# ``dephell self autocomplete```
source "$HOME/.local/share/dephell/_dephell_zsh_autocomplete"

# Invoke
# http://www.pyinvoke.org/
# ``pipx install invoke``
# ``invoke --print-completion-script zsh``
# Invoke tab-completion script to be sourced with the Z shell.
# Known to work on zsh 5.0.x, probably works on later 4.x releases as well (as
# it uses the older compctl completion system).
_complete_invoke() {
    # `words` contains the entire command string up til now (including
    # program name).
    #
    # We hand it to Invoke so it can figure out the current context: spit back
    # core options, task names, the current task's options, or some combo.
    #
    # Before doing so, we attempt to tease out any collection flag+arg so we
    # can ensure it is applied correctly.
    collection_arg=''
    if [[ "${words}" =~ "(-c|--collection) [^ ]+" ]]; then
        collection_arg=$MATCH
    fi
    # `reply` is the array of valid completions handed back to `compctl`.
    # Use ${=...} to force whitespace splitting in expansion of
    # $collection_arg
    reply=( $(invoke ${=collection_arg} --complete -- ${words}) )
}
# Tell shell builtin to use the above for completing our given binary name(s).
# * -K: use given function name to generate completions.
# * +: specifies 'alternative' completion, where options after the '+' are only
#   used if the completion from the options before the '+' result in no matches.
# * -f: when function generates no results, use filenames.
# * positional args: program names to complete for.
compctl -K _complete_invoke + -f invoke inv
# vim: set ft=sh :

# Brew build packages for Python
# openssl
# ``brew install openssl```
LDFLAGS="-L/usr/local/opt/openssl@1.1/lib $LDFLAGS"
CPPFLAGS="-I/usr/local/opt/openssl@1.1/include $CPPFLAGS"
PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig $PKG_CONFIG_PATH"
# readline
# ``brew install readline```
LDFLAGS="-L/usr/local/opt/readline/lib $LDFLAGS"
CPPFLAGS="-I/usr/local/opt/readline/include $CPPFLAGS"
PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig $PKG_CONFIG_PATH"
# sqlite3
# ``brew install sqlite3```
LDFLAGS="-L/usr/local/opt/sqlite/lib $LDFLAGS"
CPPFLAGS="-I/usr/local/opt/sqlite/include $CPPFLAGS"
PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig $PKG_CONFIG_PATH"
# zlib
# ``brew install zlib``
export LDFLAGS="-L/usr/local/opt/zlib/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/zlib/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig $PKG_CONFIG_PATH"

# lsd
# https://github.com/Peltoche/lsd
# ``brew install lsd`
# ``brew cask install homebrew/cask-fonts/font-firacode-nerd-font```
alias ld='lsd --almost-all --long --timesort --group-dirs=first'
alias td='lsd --timesort --group-dirs=first --tree'

# fzf
# https://github.com/junegunn/fzf
# ``brew install fzf``
# ``$(brew --prefix)/opt/fzf/install``
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fd integration
# https://github.com/sharkdp/fd#integration-with-other-programs
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
# This line apparently slows down fzf, so use with caution
export FZF_DEFAULT_OPTS="--ansi"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef'
# bat integration
alias prev="fd \
           --type file \
           --follow \
           --hidden \
           --exclude .git | \
            fzf \
            --preview 'bat --style=numbers --color=always {} | head -500'"

# thefuck
# https://github.com/nvbn/thefuck
# ``brew install thefuck``
eval $(thefuck --alias)
alias fu=fuck

# ripgrep
# https://github.com/BurntSushi/ripgrep
# ``brew install rg```
export RIPGREP_CONFIG_PATH="$HOME/.config/.ripgreprc"

# zioxide
# https://github.com/ajeetdsouza/zoxide
# ``brew install zioxide``
eval "$(zoxide init zsh)"

# Functions
fpath+=("$HOME/.config/zsh/functions")
autoload -Uz $HOME/.config/zsh/functions/**/*

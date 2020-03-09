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

# Poetry
# ``mkdir $ZSH/plugins/poetry``
# ``poetry completions zsh > $ZSH/plugins/poetry/_poetry``

# Conda
# ``git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion``
# And init step below

# zsh-autosuggestions
# ``git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions``
plugins=(
    git
    osx
    python
    pip
    conda-zsh-completion
    poetry
    docker
    docker-compose
    zsh-autosuggestions
)

# Homebrew with non admin
# ``git clone --depth=1 https://github.com/Homebrew/brew ~/homebrew``
# ``brew update```
# ``brew doctor```
# https://stackoverflow.com/questions/35775102/how-to-install-homebrew-packages-locally
PATH="$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH"
# Homebrew autocompletion
# https://docs.brew.sh/Shell-Completion
# This is pretty slow right now
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pcosta/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pcosta/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pcosta/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pcosta/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add Visual Studio Code (code)
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# ODBC directory
# export ODBCINI=/Users/pcosta/miniconda3/envs/ds/etc/odbc.ini
# export ODBCSYSINI=/Users/pcosta/miniconda3/envs/ds/etc

# SQL passwords

# SQL server
export SQL_USERNAME=pcosta
export SQL_PASSWORD=p@$$w0rd
export SQLUSERNAME=$SQL_USERNAME
export SQLPASSWORD=$SQL_PASSWORD

# Snowflake
export SNOWFLAKE_USERNAME=pcosta
export SNOWFLAKE_PASSWORD=p@44w0rd
export SNOWFLAKEUSERNAME=$SNOWFLAKE_USERNAME
export SNOWFLAKEPASSWORD=$SNOWFLAKE_PASSWORD

# PYTHONPATH
PYTHONPATH=/Users/pcosta/Documents/pyfrb_projects/pyfrb/:$PYTHONPATH
PYTHONPATH=/Users/pcosta/Documents/ds/sqltools/:$PYTHONPATH
export PYTHONPATH

# Pure theme
# https://github.com/sindresorhus/pure
fpath+=('$PWD/functions')
fpath+=('/Users/pcosta/miniconda3/lib/node_modules/pure-prompt/functions')
autoload -U promptinit; promptinit
prompt pure

# Syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting.git
source /Users/pcosta/miniconda3/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Allow the use of the z plugin to easily navigate directories
# https://github.com/rupa/z/blob/master/z.sh
. /Users/pcosta/miniconda3/etc/profile.d/z.sh

# Conda completion
# https://github.com/esc/conda-zsh-completion/blob/master/_conda
autoload -U compinit && compinit

# Pipx completion
# ``brew install pipx``
# ``pipx ensurepath``
# https://github.com/pipxproject/pipx
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"
export PATH="/Users/pcosta/.local/bin:$PATH"

# Nox completion
# ``pipx install nox``
# Like pipx, needs bashcompinit enabled
# https://github.com/theacodes/nox
eval "$(register-python-argcomplete nox)"

# Poetry
# https://python-poetry.org/docs/
export PATH="$HOME/.poetry/bin:$PATH"

# Compile Python
# We could use $(brew --prefix openssl) to get the paths here, but it's
# slightly too slow

# Homebrew openssl
# brew install openssl
LDFLAGS="-L/Users/pcosta/homebrew/opt/openssl@1.1/lib $LDFLAGS"
CPPFLAGS="-I/Users/pcosta/homebrew/opt/openssl@1.1/include $CPPFLAGS"
PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/openssl@1.1/lib/pkgconfig $PKG_CONFIG_PATH"

# Homebrew xz
# brew install xz
LDFLAGS="-L/Users/pcosta/homebrew/opt/xz/lib $LDFLAGS"
CPPFLAGS="-I/Users/pcosta/homebrew/opt/xz/include $CPPFLAGS"
PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/xz/lib/pkgconfig $PKG_CONFIG_PATH"

# Homebrew readline
# brew install readline
LDFLAGS="-L/Users/pcosta/homebrew/opt/readline/lib $LDFLAGS"
CPPFLAGS="-I/Users/pcosta/homebrew/opt/readline/include $CPPFLAGS"
PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/readline/lib/pkgconfig $PKG_CONFIG_PATH"

# Homebrew sqlite3
# brew install sqlite3
LDFLAGS="-L/Users/pcosta/homebrew/opt/sqlite/lib $LDFLAGS"
CPPFLAGS="-I/Users/pcosta/homebrew/opt/sqlite/include $CPPFLAGS"
PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/sqlite/lib/pkgconfig $PKG_CONFIG_PATH"

# Homebrew zlib
# brew install zlib
LDFLAGS="-L/Users/pcosta/homebrew/opt/zlib/lib $LDFLAGS"
CPPFLAGS="-I/Users/pcosta/homebrew/opt/zlib/include $CPPFLAGS"
PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/zlib/lib/pkgconfig $PKG_CONFIG_PATH"

# Homebrew unixodbc
# Mostly for building pyodbc
# brew install unixodbc
export LDFLAGS="-L/Users/pcosta/homebrew/opt/unixodbc/lib $LDFLAGS"
export CPPFLAGS="-I/Users/pcosta/homebrew/opt/unixodbc/include $CPPFLAGS"
export PKG_CONFIG_PATH="/Users/pcosta/homebrew/opt/unixodbc/lib/pkgconfig $PKG_CONFIG_PATH"

# Pyenv
# https://github.com/pyenv/pyenv#installation
# https://github.com/pyenv/pyenv-virtualenv
# ``brew install pyenv``
# ``brew install readline sqlite3 xz zlib``
# ``brew install pyenv-virtualenv``
# This should be last to overide conda paths
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then
    eval "$(pyenv virtualenv-init -)";
fi
source /Users/pcosta/homebrew/opt/pyenv/completions/pyenv.zsh

# Functions

# Set proxy
function set_proxy {
	proxy='http://pcosta:p@$$w0rd@webproxyfrb.iglobal.firstrepublic.com:8080'
	export HTTPS_PROXY=$proxy
	export HTTP_PROXY=$proxy
}

function unset_proxy {
	unset HTTPS_PROXY
	unset HTTP_PROXY
}

# Make a new Python project
function new_python {
    pyenv shell $2
    poetry new $1
    cd $1
    # Change this when poetry updates to markdown
    mv README.rst README.md
    echo "# $1" > README.md
    pyenv local $2
    set_proxy
    poetry install
    poetry add -D mypy flake8 flake8-mypy flake8-isort flake8-bugbear flake8-docstrings flake8-black flake8-rst-docstrings pandas-vet pep8-naming black isort ipykernel sphinx coverage pre-commit sphinx-theme-material rope recommonmark
    # Taking first 6 lines of flake8 file for now and add new line to
    # re-rout mypy.ini file
    head -6 ~/.config/flake8 > .flake8
    echo "mypy_config = mypy.ini" >> .flake8
    cp ~/.config/mypy/config mypy.ini
    cp ~/.isort.cfg .isort.cfg
    cp ~/.config/python.gitignore .gitignore
    cp ~/.config/python.pre-commit-config.yaml .pre-commit-config.yaml
    git init
    pre-commit install
    git add .
    git commit -m "Basic project structure"
    poetry shell
    python -m ipykernel install --user --name=$1
}

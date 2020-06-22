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
alias pip_upgrade_all="python -m pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python -m pip install --upgrade"
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
# Default to color for ncdu
alias ncdu="ncdu --color=dark --follow-firmlinks"

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
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Poetry
# https://python-poetry.org/docs/
# ``curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python``
PATH="$HOME/.poetry/bin:$PATH"

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
export PATH="$PATH:/Users/paulo/.local/bin"
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

# Generated by vivid
# Install vivid via brew when this issue is closed: 
# https://github.com/sharkdp/vivid/issues/25
# ``vivid generate jellybeans``
export LS_COLORS='
    pi=0;38;2;240;160;192:or=0;38;2;250;208;122;48;2;144;32;32:fi=0:mi=0;38;2;
    250;208;122;48;2;144;32;32:di=0;38;2;198;182;238:*~=3;38;2;136;136;136:
    cd=0;38;2;207;106;76:ex=1;38;2;255;185;100:ln=0;38;2;250;208;122:no=0:bd=0;
    38;2;207;106;76:so=0;38;2;240;160;192:*.o=3;38;2;136;136;136:*.a=1;38;2;
    255;185;100:*.c=0;38;2;129;151;191:*.z=4;38;2;250;208;122:*.h=0;38;2;129;
    151;191:*.d=0;38;2;129;151;191:*.r=0;38;2;129;151;191:*.t=0;38;2;129;151;
    191:*.m=0;38;2;129;151;191:*.p=0;38;2;129;151;191:*.ko=1;38;2;255;185;
    100:*.sh=0;38;2;129;151;191:*.td=0;38;2;129;151;191:*.nb=0;38;2;129;151;
    191:*.hi=3;38;2;136;136;136:*.rb=0;38;2;129;151;191:*.bz=4;38;2;250;208;
    122:*.lo=3;38;2;136;136;136:*.xz=4;38;2;250;208;122:*.so=1;38;2;255;185;
    100:*.gv=0;38;2;129;151;191:*.cp=0;38;2;129;151;191:*.rm=0;38;2;218;208;
    133:*.bc=3;38;2;136;136;136:*.ex=0;38;2;129;151;191:*.hh=0;38;2;129;151;
    191:*.cr=0;38;2;129;151;191:*.pp=0;38;2;129;151;191:*.gz=4;38;2;250;208;
    122:*.la=3;38;2;136;136;136:*.rs=0;38;2;129;151;191:*.el=0;38;2;129;151;
    191:*.mn=0;38;2;129;151;191:*.ui=0;38;2;153;173;106:*.vb=0;38;2;129;151;
    191:*.jl=0;38;2;129;151;191:*.fs=0;38;2;129;151;191:*.pl=0;38;2;129;151;
    191:*.ml=0;38;2;129;151;191:*.cc=0;38;2;129;151;191:*.pm=0;38;2;129;151;
    191:*.js=0;38;2;129;151;191:*.7z=4;38;2;250;208;122:*.cs=0;38;2;129;151;
    191:*.py=0;38;2;129;151;191:*.md=0;38;2;102;135;153:*.kt=0;38;2;129;151;
    191:*.hs=0;38;2;129;151;191:*.ps=0;38;2;102;135;153:*.ts=0;38;2;129;151;
    191:*.go=0;38;2;129;151;191:*.as=0;38;2;129;151;191:*.di=0;38;2;129;151;
    191:*css=0;38;2;129;151;191:*.ll=0;38;2;129;151;191:*.png=0;38;2;218;208;
    133:*.otf=0;38;2;218;208;133:*.toc=3;38;2;136;136;136:*.zip=4;38;2;250;208;
    122:*.cfg=0;38;2;153;173;106:*.php=0;38;2;129;151;191:*.dox=0;38;2;118;151;
    214:*.clj=0;38;2;129;151;191:*.htm=0;38;2;102;135;153:*.ipp=0;38;2;129;151;
    191:*.pid=3;38;2;136;136;136:*.xls=0;38;2;102;135;153:*.ind=3;38;2;136;136;
    136:*.tex=0;38;2;129;151;191:*.sql=0;38;2;129;151;191:*.tif=0;38;2;218;208;
    133:*.mkv=0;38;2;218;208;133:*.mp3=0;38;2;218;208;133:*.doc=0;38;2;102;135;
    153:*.odp=0;38;2;102;135;153:*.mir=0;38;2;129;151;191:*.csx=0;38;2;129;151;
    191:*.mpg=0;38;2;218;208;133:*.m4v=0;38;2;218;208;133:*.bak=3;38;2;136;136;
    136:*.pas=0;38;2;129;151;191:*.aif=0;38;2;218;208;133:*.ics=0;38;2;102;135;
    153:*.sbt=0;38;2;129;151;191:*.kts=0;38;2;129;151;191:*TODO=0;38;2;112;185;
    80:*.erl=0;38;2;129;151;191:*.fsx=0;38;2;129;151;191:*.mp4=0;38;2;218;208;
    133:*.deb=4;38;2;250;208;122:*.elm=0;38;2;129;151;191:*.pod=0;38;2;129;151;
    191:*.zsh=0;38;2;129;151;191:*.bcf=3;38;2;136;136;136:*.pro=0;38;2;118;151;
    214:*.ppm=0;38;2;218;208;133:*.bag=4;38;2;250;208;122:*.pkg=4;38;2;250;208;
    122:*.tmp=3;38;2;136;136;136:*.awk=0;38;2;129;151;191:*.wma=0;38;2;218;208;
    133:*.iso=4;38;2;250;208;122:*.wav=0;38;2;218;208;133:*.aux=3;38;2;136;136;
    136:*.dot=0;38;2;129;151;191:*.rpm=4;38;2;250;208;122:*.tsx=0;38;2;129;151;
    191:*.inc=0;38;2;129;151;191:*.tgz=4;38;2;250;208;122:*.pgm=0;38;2;218;208;
    133:*.htc=0;38;2;129;151;191:*.flv=0;38;2;218;208;133:*.bat=1;38;2;255;185;
    100:*.fls=3;38;2;136;136;136:*.lua=0;38;2;129;151;191:*.svg=0;38;2;218;208;
    133:*.bmp=0;38;2;218;208;133:*.rst=0;38;2;102;135;153:*.apk=4;38;2;250;208;
    122:*.bbl=3;38;2;136;136;136:*.blg=3;38;2;136;136;136:*.bst=0;38;2;153;
    173;106:*.cgi=0;38;2;129;151;191:*.bin=4;38;2;250;208;122:*.rtf=0;38;2;102;
    135;153:*.epp=0;38;2;129;151;191:*.log=3;38;2;136;136;136:*.sxi=0;38;2;102;
    135;153:*.idx=3;38;2;136;136;136:*.asa=0;38;2;129;151;191:*.pyc=3;38;2;136;
    136;136:*.dll=1;38;2;255;185;100:*.xlr=0;38;2;102;135;153:*.avi=0;38;2;218;
    208;133:*.dmg=4;38;2;250;208;122:*.nix=0;38;2;153;173;106:*.dpr=0;38;2;129;
    151;191:*.com=1;38;2;255;185;100:*.pps=0;38;2;102;135;153:*.bz2=4;38;2;250;
    208;122:*.exe=1;38;2;255;185;100:*.txt=0;38;2;121;157;106:*.tar=4;38;2;250;
    208;122:*.fnt=0;38;2;218;208;133:*.tml=0;38;2;153;173;106:*.ttf=0;38;2;218;
    208;133:*.mid=0;38;2;218;208;133:*.bib=0;38;2;153;173;106:*.h++=0;38;2;129;
    151;191:*.pbm=0;38;2;218;208;133:*.kex=0;38;2;102;135;153:*.gif=0;38;2;218;
    208;133:*.swp=3;38;2;136;136;136:*.bsh=0;38;2;129;151;191:*hgrc=0;38;2;118;
    151;214:*.xmp=0;38;2;153;173;106:*.cxx=0;38;2;129;151;191:*.vim=0;38;2;129;
    151;191:*.exs=0;38;2;129;151;191:*.hxx=0;38;2;129;151;191:*.pdf=0;38;2;102;
    135;153:*.odt=0;38;2;102;135;153:*.sty=3;38;2;136;136;136:*.img=4;38;2;250;
    208;122:*.ico=0;38;2;218;208;133:*.gvy=0;38;2;129;151;191:*.cpp=0;38;2;129;
    151;191:*.sxw=0;38;2;102;135;153:*.fon=0;38;2;218;208;133:*.vcd=4;38;2;250;
    208;122:*.git=3;38;2;136;136;136:*.def=0;38;2;129;151;191:*.xcf=0;38;2;218;
    208;133:*.vob=0;38;2;218;208;133:*.ltx=0;38;2;129;151;191:*.xml=0;38;2;102;
    135;153:*.hpp=0;38;2;129;151;191:*.c++=0;38;2;129;151;191:*.out=3;38;2;136;
    136;136:*.rar=4;38;2;250;208;122:*.fsi=0;38;2;129;151;191:*.tcl=0;38;2;129;
    151;191:*.inl=0;38;2;129;151;191:*.jpg=0;38;2;218;208;133:*.tbz=4;38;2;250;
    208;122:*.arj=4;38;2;250;208;122:*.jar=4;38;2;250;208;122:*.ini=0;38;2;153;
    173;106:*.ods=0;38;2;102;135;153:*.mli=0;38;2;129;151;191:*.ps1=0;38;2;129;
    151;191:*.ogg=0;38;2;218;208;133:*.yml=0;38;2;153;173;106:*.swf=0;38;2;218;
    208;133:*.ilg=3;38;2;136;136;136:*.wmv=0;38;2;218;208;133:*.csv=0;38;2;102;
    135;153:*.ppt=0;38;2;102;135;153:*.mov=0;38;2;218;208;133:*.jpeg=0;38;2;
    218;208;133:*.rlib=3;38;2;136;136;136:*.pptx=0;38;2;102;135;153:*.psd1=0;
    38;2;129;151;191:*.dart=0;38;2;129;151;191:*.h264=0;38;2;218;208;
    133:*.bash=0;38;2;129;151;191:*.docx=0;38;2;102;135;153:*.purs=0;38;2;129;
    151;191:*.flac=0;38;2;218;208;133:*.xlsx=0;38;2;102;135;153:*.mpeg=0;38;2;
    218;208;133:*.java=0;38;2;129;151;191:*.lisp=0;38;2;129;151;191:*.html=0;
    38;2;102;135;153:*.make=0;38;2;118;151;214:*.psm1=0;38;2;129;151;
    191:*.json=0;38;2;153;173;106:*.fish=0;38;2;129;151;191:*.conf=0;38;2;153;
    173;106:*.tbz2=4;38;2;250;208;122:*.less=0;38;2;129;151;191:*.epub=0;38;2;
    102;135;153:*.yaml=0;38;2;153;173;106:*.diff=0;38;2;129;151;191:*.toml=0;
    38;2;153;173;106:*.lock=3;38;2;136;136;136:*.hgrc=0;38;2;118;151;
    214:*.orig=3;38;2;136;136;136:*.dyn_o=3;38;2;136;136;136:*passwd=0;38;2;
    153;173;106:*.mdown=0;38;2;102;135;153:*.cmake=0;38;2;118;151;
    214:*.patch=0;38;2;129;151;191:*.cabal=0;38;2;129;151;191:*.swift=0;38;2;
    129;151;191:*.scala=0;38;2;129;151;191:*shadow=0;38;2;153;173;
    106:*.shtml=0;38;2;102;135;153:*.class=3;38;2;136;136;136:*.xhtml=0;38;2;
    102;135;153:*.ipynb=0;38;2;129;151;191:*.cache=3;38;2;136;136;
    136:*.toast=4;38;2;250;208;122:*README=1;38;2;101;194;84:*.groovy=0;38;2;
    129;151;191:*.flake8=0;38;2;118;151;214:*.ignore=0;38;2;118;151;
    214:*.dyn_hi=3;38;2;136;136;136:*COPYING=3;38;2;153;173;106:*INSTALL=1;38;
    2;101;194;84:*.gradle=0;38;2;129;151;191:*.config=0;38;2;153;173;
    106:*TODO.md=0;38;2;112;185;80:*.matlab=0;38;2;129;151;191:*LICENSE=3;38;2;
    153;173;106:*setup.py=0;38;2;118;151;214:*Doxyfile=0;38;2;118;151;
    214:*.gemspec=0;38;2;118;151;214:*.desktop=0;38;2;153;173;106:*Makefile=0;
    38;2;118;151;214:*TODO.txt=0;38;2;112;185;80:*.markdown=0;38;2;102;135;
    153:*README.md=1;38;2;101;194;84:*COPYRIGHT=3;38;2;153;173;
    106:*configure=0;38;2;118;151;214:*.fdignore=0;38;2;118;151;
    214:*.cmake.in=0;38;2;118;151;214:*.rgignore=0;38;2;118;151;
    214:*.kdevelop=0;38;2;118;151;214:*CODEOWNERS=0;38;2;118;151;
    214:*SConstruct=0;38;2;118;151;214:*INSTALL.md=1;38;2;101;194;
    84:*.gitconfig=0;38;2;118;151;214:*Dockerfile=0;38;2;153;173;
    106:*.scons_opt=3;38;2;136;136;136:*SConscript=0;38;2;118;151;
    214:*.gitignore=0;38;2;118;151;214:*README.txt=1;38;2;101;194;
    84:*.gitmodules=0;38;2;118;151;214:*MANIFEST.in=0;38;2;118;151;
    214:*Makefile.in=3;38;2;136;136;136:*.synctex.gz=3;38;2;136;136;
    136:*Makefile.am=0;38;2;118;151;214:*LICENSE-MIT=3;38;2;153;173;
    106:*.travis.yml=0;38;2;143;191;220:*.applescript=0;38;2;129;151;
    191:*.fdb_latexmk=3;38;2;136;136;136:*configure.ac=0;38;2;118;151;
    214:*appveyor.yml=0;38;2;143;191;220:*CONTRIBUTORS=1;38;2;101;194;
    84:*.clang-format=0;38;2;118;151;214:*CMakeCache.txt=3;38;2;136;136;
    136:*INSTALL.md.txt=1;38;2;101;194;84:*LICENSE-APACHE=3;38;2;153;173;
    106:*.gitattributes=0;38;2;118;151;214:*CMakeLists.txt=0;38;2;118;151;
    214:*CONTRIBUTORS.md=1;38;2;101;194;84:*.sconsign.dblite=3;38;2;136;136;
    136:*requirements.txt=0;38;2;118;151;214:*CONTRIBUTORS.txt=1;38;2;101;194;
    84:*package-lock.json=3;38;2;136;136;136
'

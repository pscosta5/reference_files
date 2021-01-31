# lsd
# https://github.com/Peltoche/lsd
# brew install lsd
# brew cask install homebrew/cask-fonts/font-firacode-nerd-font
alias ld='lsd --almost-all --long --timesort --group-dirs=first'
alias td="
    lsd \
    --almost-all \
    --timesort \
    --group-dirs=first \
    --tree \
    --ignore-glob=.git \
    --ignore-glob=.mypy_cache \
    --ignore-glob=.coverage \
    --ignore-glob=.hypothesis \
    --ignore-glob=.nox \
    --ignore-glob=.pytest_cache \
    --ignore-glob=.pytype \
    --ignore-glob=dist \
    --ignore-glob=_build \
    --ignore-glob=__pycache__
"

# Pipx
# https://github.com/pipxproject/pipx
# ``brew install pipx``
# ``pipx ensurepath``
# ``pipx completions``
# Must run before:
# autoload -U bashcompinit
# bashcompinit
export PATH="$PATH:/Users/${USER}/.local/bin"
eval "$(register-python-argcomplete pipx)"

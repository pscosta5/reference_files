# Pipx
# https://github.com/pipxproject/pipx
# ``brew install pipx``
# ``pipx ensurepath``
# ``pipx completions``
# Must run before:
# autoload -U bashcompinit
# bashcompinit
# Should come before other scripts so that they can use packages in PATH
export PATH="$PATH:${HOME}/.local/bin"
eval "$(register-python-argcomplete pipx)"

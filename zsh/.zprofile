# Pyenv https://github.com/pyenv/pyenv/
# So pyenv acts as a proper shell function
# https://github.com/pyenv/pyenv/issues/1906#issuecomment-835027647
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/home/pawlu/go/bin"

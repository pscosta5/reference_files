# iTerm integration
# https://iterm2.com/
# curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
# Mark appearance seems to depend on when this is run, so run it last
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

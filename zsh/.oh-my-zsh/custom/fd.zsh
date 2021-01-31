# fd
# https://github.com/sharkdp/fd
# brew install fd
alias fd="fd --hidden --follow"
# bat integration
alias prev="fd \
           --type file \
           --follow \
           --hidden \
           --exclude .git | \
            fzf \
            --preview 'bat --style=numbers --color=always {} | head -500'"

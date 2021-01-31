# fzf
# https://github.com/junegunn/fzf
# brew install fzf
# $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fd integration
# https://github.com/sharkdp/fd#integration-with-other-programs
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --color=always'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# --ansi will slow down fzf, so remove if performance issues
export FZF_DEFAULT_OPTS='
    --ansi
    --color=fg:-1,bg:-1,hl:#80cbc4,gutter:-1
    --color=fg+:#ffffff,bg+:#4b5263,hl+:#80cbc4
    --color=info:#82AAFF,prompt:#80cbc4,pointer:#80cbc4
    --color=marker:#ffffff,spinner:#C3E88D,header:#C792EA
'

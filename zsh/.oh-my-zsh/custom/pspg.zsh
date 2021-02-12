# pspg
# https://github.com/okbob/pspg
# brew install pspg
# Set pspg theme to simple
alias pspg="pspg -s 16 --vertical-cursor --bold-labels --bold-cursor --force-uniborder"
# Set as default pager for presto
export PRESTO_PAGER='pspg -s 16 --vertical-cursor --bold-labels --bold-cursor --force-uniborder'

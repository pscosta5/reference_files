# pspg
# https://github.com/okbob/pspg
# brew install pspg
# Set pspg theme to simple
export PSPG='-s 16 --vertical-cursor --bold-labels --bold-cursor --force-uniborder'
# # Set as default pager for presto
export PRESTO_PAGER="pspg ${PSPG}"

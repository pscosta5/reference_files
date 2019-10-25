# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Proxy
function setproxy {
	proxy='http://pcosta:escapedpassword@webproxyfrb.iglobal.company.com:8080'
	export https_proxy=$proxy
	export http_proxy=$proxy
}

function unsetproxy {
	unset https_proxy
	unset http_proxy
}

# ODBC directory
export ODBCINI=/Users/pcosta/miniconda3/envs/ds/etc/odbc.ini
export ODBCSYSINI=/Users/pcosta/miniconda3/envs/ds/etc

# PYTHONPATH
PYTHONPATH=/Users/pcosta/Documents/.../:$PYTHONPATH
PYTHONPATH=/Users/pcosta/Documents/.../...:$PYTHONPATH
export PYTHONPATH

# Terminal customization
# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
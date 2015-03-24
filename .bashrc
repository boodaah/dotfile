# To enclose single quotes within other single quotes, it needs to be escaped using '\'
# or in other terms each inner single quote needs to be replaced with '\''
#   grep 'text' source.txt    becomes      alias sample='grep '\''text'\'' source.txt'


# duplicate commands and commands with leading space do not get added to history
export HISTCONTROL=ignorespace:ignoredups:erasedups


# expand the history size
export HISTSIZE=10000


# commands that do not get added to history
export HISTIGNORE="history*:man*"


# set PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"


# set EDITOR
export EDITOR="/usr/local/bin/subl -w"


# set PAGER for man pages
#export PAGER="col -b  | open -a /Applications/Safari.app -f"
export PAGER="col -b  | open -a /Applications/Google\ Chrome.app -f"


# set Homebrew Cask options
export HOMEBREW_CASK_OPTS="--appdir=/Applications --fontdir=~/Fonts"


# ALIASES
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi


# FUNCTIONS
if [[ -f ~/.bash_functions ]]; then
    source ~/.bash_functions
fi


# PROMPT
if [[ -f ~/.bash_prompt ]]; then
    source ~/.bash_prompt
fi


# EXTRA
# use .extra for stuff you don't want to commit
if [[ -f ~/.extra ]]; then
    source ~/.extra
fi


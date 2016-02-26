#!/usr/bin/env bash

# To enclose single quotes within other single quotes, it needs to be escaped using '\'
# or in other terms each inner single quote needs to be replaced with '\''
#   grep 'text' source.txt    becomes      alias sample='grep '\''text'\'' source.txt'


# duplicate commands and commands with leading space do not get added to history
export HISTCONTROL=ignorespace:ignoredups:erasedups


# expand the history size
export HISTSIZE=10000


# commands that do not get added to history
export HISTIGNORE="history*:man*"


# set locale environment
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# set PATH
export PATH="~/.composer/vendor/bin:~/.npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"


# set EDITOR
export EDITOR="/usr/local/bin/subl -w"


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


#!/usr/bin/env bash

# remove .DS_Store files
alias ds="sudo find -x . -iname '.DS_Store'"


# git push
alias gitpush="git push -u origin master"


# Undo gitpush
alias gitunpush="git push -f origin HEAD^:master"


# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"


# list files - F: flag directories, executables, symlinks, etc   l: long format   A: all files except . and ..   G: colorize output 
alias ll="ls -FlAG"


# safety first rm
alias rm="rm -i"


# add blank space to dock
alias space="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}';Killall Dock"


# alias to add a space-tile to the Dock
# Left side
#   defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# Right Side
#   defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'


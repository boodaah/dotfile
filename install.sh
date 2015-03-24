#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# make in case they aren't already there
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# copy bash files
cp .bash_aliases ~/.bash_aliases
cp .bash_funcitons ~/.bash_funcitons
cp .bash_profile ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .bashrc ~/.bashrc
source ~/.bash_profile

# copy git files
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global

# homebrew
sh homebrew.sh

# settings
sh settings.sh


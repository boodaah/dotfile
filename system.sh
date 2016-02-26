#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# copy bash files
cp .bash_aliases ~/.bash_aliases
cp .bash_functions ~/.bash_functions
cp .bash_profile ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .bashrc ~/.bashrc
source ~/.bash_profile

# copy git files
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global

# create directories
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"
mkdir -p ~/.npm

# create gem and node resource files
echo "gem: -n /usr/local/bin" >> ~/.gemrc
echo "prefix=/Users/$(whoami)/.npm" >> ~/.npmrc

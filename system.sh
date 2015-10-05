#!/usr/bin/env bash

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

# copy node files
cp .npmrc ~/.npmrc

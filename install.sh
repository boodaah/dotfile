#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# make in case they aren't already there
sudo mkdir -p "/usr/local/lib"
sudo mkdir -p "/usr/local/bin"

# homebrew
# cask
# settings
sh settings.sh

#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

## public key
sh publickey.sh

## homebrew
sh homebrew.sh

## node.js
sh node.sh

## composer
sh composer.sh

## homestead
sh homestead.sh

## /etc/hosts
sh hosts.sh

## ruby
sh ruby.sh

#!/usr/bin/env bash

# Check gem version
# gem -v

# View gem environment
# gem env

# INSTALLATION DIRECTORY: /Library/Ruby/Gems/2.0.0
# - GEM PATHS:
#      - /Library/Ruby/Gems/2.0.0
#      - /Users/kennethferguson/.gem/ruby/2.0.0

# self-update gem
sudo gem update --system

# update installed gems
sudo gem update --no-rdoc --no-ri

# install jekyll
sudo gem install jekyll --no-rdoc --no-ri

# clean up
sudo gem cleanup

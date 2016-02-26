#!/usr/bin/env bash

vagrant box add --provider virtualbox laravel/homestead

git clone https://github.com/laravel/homestead.git ~/Homestead

# if you would like to try the php-7 branch, use this statement:
# git clone -b php-7 https://github.com/laravel/homestead.git Homestead

(cd ~/Homestead && sh init.sh)

cp ~/Dropbox/Software/dotfile/homestead.yaml ~/.homestead/Homestead.yaml


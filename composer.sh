#!/usr/bin/env bash

# To check version:
# composer -V

# To show installed global packages:
# composer show --self

# To show homepage of a packages:
# composer home <vendor/package>

# To update a package:
# composer update <vendor/package>

# To update composer:
# sudo composer self-update

# To update the autoloader:
# sudo composer dump-autoload -o


curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo composer global require "laravel/installer"

sudo composer global require "laravel/lumen-installer"

sudo composer global require "laravel/homestead"

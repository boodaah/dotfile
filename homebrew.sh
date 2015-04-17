#!/usr/bin/env bash

if [ ! -f /usr/local/bin/brew ]; then 
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew install dos2unix
brew install git
brew install libdvdcss
brew install tree
brew install unrar
brew install wget

brew install ffmpeg --with-faac
brew install caskroom/cask/brew-cask


## Install brew cask apps
brew cask install 1password
brew cask install appzapper
# brew cask install asepsis
brew cask install atom
brew cask install bittorrent-sync
brew cask install blender
brew cask install brackets
brew cask install burn
brew cask install camtwist
brew cask install ccleaner
# brew cask install chrome-remote-desktop-host
brew cask install chromecast
brew cask install chronicle
brew cask install clamxav
brew cask install coda
brew cask install codekit
brew cask install colorpicker
brew cask install colorpicker-hex
brew cask install dropbox
brew cask install firefox
brew cask install flash
brew cask install fontexplorer-x-pro
brew cask install google-chrome
brew cask install google-drive
brew cask install handbrake
brew cask install imagealpha
brew cask install imageoptim
brew cask install joinme
brew cask install keepingyouawake
brew cask install macdown
brew cask install macx-youtube-downloader
brew cask install mailbox
brew cask install ocenaudio
brew cask install renamer
brew cask install screenflow
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install steam
brew cask install sublime-text
brew cask install tower
brew cask install transmit
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install vlc


## Install additional apps for iMac 
# brew cask install battle-net
# brew cask install logitech-gaming-software
# brew cask install mumble
# brew cask install obs
# brew cask install transmission
# brew cask install xld


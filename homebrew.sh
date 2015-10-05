#!/usr/bin/env bash

if [ ! -f /usr/local/bin/brew ]; then 
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## Update brew
brew update

## Install brew apps
brew install caskroom/cask/brew-cask
brew install dos2unix
# optional gettext
brew install ffmpeg --with-faac         
# installed: pkg-config, texi2html, yasm
# recommeded: x264, lame, libvo-aacenc, xvid
# optional: faac, openssl
brew install git
# optional gettext
brew install libdvdcss
brew install p7zip
brew install tree
brew install unrar
brew install wget
#recommened: openssl

## Install brew cask apps
brew cask install colorpicker-hex
brew cask install vagrant

## Software websites
# brew cask home 1password
# brew cask home appzapper
# brew cask home atom
# brew cask home blender
# brew cask home brackets
# brew cask home burn
# brew cask home chronicle
# brew cask home coda
# brew cask home codekit
# brew cask home colorpicker
# brew cask home firefox
# brew cask home google-chrome
# brew cask home google-drive
# brew cask home handbrake
# brew cask home imagealpha
# brew cask home imageoptim
# brew cask home joinme
# brew cask home macdown
# brew cask home macx-youtube-downloader
# brew cask home mailbox
# brew cask home ocenaudio
# brew cask home paw
# brew cask home screenflow
# brew cask home sequel-pro
# brew cask home skype
# open http://macphun.com/snapheal
# brew cask home sublime-text
# brew cask home thunderbird
# brew cask home tower
# brew cask home transmit
# brew cask home vagrant-manager
# brew cask home virtualbox
# brew cask home vlc

## MacBook only
# brew cask home keepingyouawake


## iMac only 
# brew cask home battle-net
# brew cask home camtwist
# open http://www.curse.com/client
# open http://www.fulltilt.com/
# open http://support.logitech.com/en_us/software/gaming-software-mac
# brew cask home mumble
# brew cask home obs
# brew cask home private-internet-access
# open http://www.arcgames.com/en/games/star-trek-online
# brew cask home steam
# open http://steelseries.com/downloads
# brew cask home transmission
# open http://www.ventrilo.com/download.php
# brew cask home viber
# brew cask home xld

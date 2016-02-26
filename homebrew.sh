#!/usr/bin/env bash

if [ ! -f /usr/local/bin/brew ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## Update brew
brew update

## Install brew apps
brew install dos2unix
# optional gettext
brew install ffmpeg --with-faac
# installed: pkg-config, texi2html, yasm
# recommeded: x264, lame, libvo-aacenc, xvid
# optional: faac, openssl
brew install git
# optional gettext
brew install libdvdcss
brew install libsass
brew install p7zip
brew install tree
brew install unrar
brew install wget
#recommened: openssl

brew unlink openssl
brew link --force openssl

## Script install
# Dropbox

## App Store
# 1Password
# Affinity Designer
# Affinity Photo
# Bitdefender Virus Scanner
# Blackmagic Disk Speed Test
# Boson
# DaVinci Resolve
# GarageBand
# Icon Slate
# iMovie
# Keynote
# Kindle
# Moom
# Numbers
# Pages
# PCalc
# Pixelmator
# Stockfish
# Xcode

## Booty
# Compressor *
# Final Cut Pro *
# Motion *
# Toast Titanium

## Manual system installs
# fonts
# node
# vagrant

## Manual application installs
# AppZapper
# Battle.net *
# Blender *
# Chronicle *
# Coda
# Curse Client *
# Firefox
# Full Tilt Poker *
# Google Chrome
# Google Drive
# HandBrake *
# ImageAlpha *
# ImageOptim *
# KeepingYouAwake
# MacDown
# MacX YouTube Downloader *
# Mumble *
# OBS *
# Paw
# Private Internet Access *
# ScreenFlow
# Sequel Pro
# Skype
# Star Trek Online *
# Steam *
# SteelSeries Engine *
# Sublime Text
# Tower
# Transmission *
# Transmit
# Ventrilo *
# Viber *
# VirtualBox
# VLC
# XLD *

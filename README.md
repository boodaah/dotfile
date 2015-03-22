# dotfile

Fresh install library for OSX

##Install

```
(mkdir -p /tmp/dotfile && cd /tmp/dotfile && curl -L https://github.com/boodaah/dotfile/archive/master.tar.gz | tar zx --strip 1 && sh ./install.sh)
```

## Goal

The goal of this dotfile is to automate the process of getting your operating system from a stock build to a fully functional machine and should be the first thing you download and run to get your computer set up.

## Details

- installs homebrew
- installs binaries (git, ffmpeg)
- installs applications via `homebrew-cask` (1password, sublime-text, virtualbox, chrome, dropbox)
- sets OSX defaults
- sets up the .bash_profile, .bashrc
- sets up the ssh keys

## TODO
- git-config
- etc

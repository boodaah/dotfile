# dotfile

Fresh install script for OSX -- Based on my personal preferences.

##Install

#### Download and Install
```
(mkdir -p /tmp/dotfile && cd /tmp/dotfile && curl -L https://github.com/boodaah/dotfile/archive/master.tar.gz | tar zx --strip 1 && sh ./install.sh)
```

####Download Only
```
curl -L https://github.com/boodaah/dotfile/archive/master.tar.gz | tar zx --strip 1
```

## Goal

The goal of this dotfile is to automate the process of getting an operating system from a stock install to a fully functional machine and should be the first thing downloaded and run to get the computer set up.

## Details

- sets up the bash profile files
- sets up the git configuration files
- installs homebrew
- installs commandline binaries
- installs applications via `brew-cask`
- sets up the OSX preferences

## TODO
- allow the gitconfig to work for other users and directories
- setup the ssh keys
- etc

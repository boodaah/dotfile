# dotfile

Fresh install for OSX -- Based on my personal preferences.

#### Install El Capitan

Run a fresh install of El Capitan filling prompts for Apple ID and default settings.

#### Rename computer

Open System Preferences > Sharing and enter name for computer.

#### Run updates

Open App Store and install updates.

#### Download Mac App Store purchases

+ 1Password
+ affinity designer
+ affinity photo
+ boson
+ colorschemer studio
+ garageband
+ icon slate
+ imovie
+ keynote
+ kindle
+ moom
+ netview
+ numbers
+ pages
+ pcalc
+ pixelmator
+ slack
+ stockfish
+ xcode

#### Open and configure Terminal

Open Terminal and enter: `bash -c "$(curl -fsSL https://goo.gl/Bamqzw)"` 

or `(mkdir -p /tmp/dotfile && cd /tmp/dotfile && curl -L -o terminal.sh https://raw.githubusercontent.com/boodaah/dotfile/master/terminal.sh && sh ./terminal.sh)`

Quit and restart Terminal.

#### Download and install Dropbox

Enter this command into Terminal: `bash -c "$(curl -fsSL https://goo.gl/sm6F3V)"`

or `(mkdir -p /tmp/dotfile && cd /tmp/dotfile && curl -L -G -d full=1 -d plat=mac -o DropboxInstaller.dmg https://www.dropbox.com/download && open DropboxInstaller.dmg)`

Run the installer and enter credentials and allow the sync to run.

// TODO: Enable "Share screenshots using Dropbox"

#### Switch to Dropbox folder and start dotfile scripts

In Terminal, enter these commands: `cd ~/Dropbox/Software/dotfile && sh ./install.sh`


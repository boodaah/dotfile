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

Enable "Share screenshots using Dropbox" by taking a screenshot, and choosing to save it to Dropbox.

#### Install Xcode command line tools.

In Terminal, enter this command: `xcode-select --install`

#### Xcode license

In Terminal, enter this command and agree to the license: `sudo xcodebuild -license`

#### Switch to Dropbox folder and start dotfile script

In Terminal, enter these commands: `cd ~/Dropbox/Software/dotfile && sh ./install.sh`

This installs the terminal dotfiles, home brew apps, and node.js dependencies.

#### Install apps from Dropbox

Open Dropbox folder and install apps including the node package installer.

#### Run dock script

Install either dock.sh or dock_macbook.sh from Terminal: `sh dock_macbook.sh`

#### Unlock registered apps

Unlock registerd apps with serial numbers stored in 1Password.



#### Run settings script
sh settings.sh

#### Transfer files


#### Addon extensions

For Atom, Brackets, Coda, Sublime Text

Sync up 1Password, Chronicle, Coda, Codekit, Moom, Sequel Pro, etc 


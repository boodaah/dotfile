# dotfile

Fresh install for OSX -- Based on my personal preferences.

#### Install El Capitan

Run a fresh install of El Capitan filling prompts for Apple ID and default settings.

#### Rename computer

Open System Preferences > Sharing and enter name for computer.

#### Run updates

Open App Store and install updates, accept Automatic updates, if prompted.

#### Download Mac App Store purchases

+ 1Password
+ Affinity Designer
+ Affinity Photo
+ Bitdefender Virus Scanner
+ Blackmagic Disk Speed Test
+ Boson
+ DaVinci Resolve
+ GarageBand
+ Icon Slate
+ iMovie
+ Keynote
+ Kindle
+ Moom
+ Numbers
+ Pages
+ PCalc
+ Pixelmator
+ Stockfish
+ Xcode

#### Open and configure Terminal

Open Terminal and enter: `bash -c "$(curl -fsSL https://goo.gl/Bamqzw)"`

or `(mkdir -p /tmp/dotfile && cd /tmp/dotfile && curl -L -o terminal.sh https://raw.githubusercontent.com/boodaah/dotfile/master/terminal.sh && sh ./terminal.sh)`

Enter: `bash -c "$curl -fsSL https://goo.gl/AZy16S)"`

or `(cd ~ && curl -L -o .bashrc https://raw.githubusercontent.com/boodaah/dotfile/master/.bashrc && curl -L -o .bash_aliases https://raw.githubusercontent.com/boodaah/dotfile/master/.bash_aliases && curl -L -o .bash_functions https://raw.githubusercontent.com/boodaah/dotfile/master/.bash_functions && curl -L -o .bash_profile https://raw.githubusercontent.com/boodaah/dotfile/master/.bash_profile && curl -L -o .bash_prompt https://raw.githubusercontent.com/boodaah/dotfile/master/.bash_prompt)`

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

#### Run system script from the Dropbox folder

In Terminal, enter these commands: `cd ~/Dropbox/Software/dotfile && sh system.sh`

This copies bash files to home directory and creates /usr/local directories.

#### Install apps from Dropbox

Open Dropbox folder and install apps including the node package installer.

#### Run install script from the Dropbox folder

In Terminal, enter these commands: `cd ~/Dropbox/Software/dotfile && sh install.sh`

This installs the terminal dotfiles, home brew apps, and node.js dependencies.

#### Run dock script

Install either dock.sh or dock_macbook.sh from Terminal: `sh dock_macbook.sh`




#### Open and unlock registered apps

Unlock registerd apps with serial numbers stored in 1Password.

1Password - open and follow prompts to use the database from Dropbox
AppZapper - open and register
Bitdefender Virus Scanner - open and follow prompts to update definitions and run scan
Coda - open and sync preferences
Firefox - open and install 1Password extension
GarageBand - open and download additional content
Google Chrome - open, set as default and sign in
    log into pocket
    settings for magic actions
        enable auto hd 720p
        enable auto wide
        stop autoplay
    hide clear downloads button
Google Drive - open and sign in
iBooks - open and sign in
KeepingYouAwake - open and set to Start at Login
Kindle - open and sign in
Mail - ???
Moom
    General
        Check Launch automatically on login
        Uncheck Show preferences on launch
        Run as menu bar application
    Custom
        Resize, Anchor upper left, 1920x1080
        Resize, Anchor upper left, 1600x1000
        Resize, Anchor upper left, 1280x960
        Resize, cmd-1, upper left, 1600x1250
        Resize, cmd-2, upper left, 1250x1250
        Resize, cmd-3, upper left, 1325x1250
        Resize, cmd-4, upper right, 1200x1250


#### Run settings script
sh settings.sh

#### Transfer files


#### Addon extensions

For Coda, Sublime Text

Sync up 1Password, Coda, Moom, Sequel Pro, etc


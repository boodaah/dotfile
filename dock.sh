#!/usr/bin/env bash

python dockutil --remove all

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Utilities
python dockutil --add /Applications/App\ Store.app
python dockutil --add /Applications/Utilities/Terminal.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Media
python dockutil --add /Applications/DaVinci\ Resolve.app
python dockutil --add /Applications/Final\ Cut\ Pro.app
python dockutil --add /Applications/HandBrake.app
python dockutil --add /Applications/iBooks.app
python dockutil --add /Applications/iMovie.app
python dockutil --add /Applications/iTunes.app
python dockutil --add /Applications/Kindle.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Communication
python dockutil --add /Applications/FaceTime.app
python dockutil --add /Applications/Messages.app
python dockutil --add /Applications/Skype.app
python dockutil --add /Applications/Viber.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Productivity
python dockutil --add /Applications/Calendar.app
python dockutil --add /Applications/Chronicle.app
python dockutil --add /Applications/Contacts.app
python dockutil --add ~/Library/Printers/EPSON\ XP-400\ Series.app
python dockutil --add /Applications/PCalc.app
python dockutil --add /Applications/Reminders.app
python dockutil --add /Applications/ScreenFlow.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Browsers
python dockutil --add /Applications/Safari.app
python dockutil --add /Applications/Firefox.app
python dockutil --add /Applications/Google\ Chrome.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Email
python dockutil --add /Applications/Mail.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Code
python dockutil --add /Applications/Coda\ 2.app
python dockutil --add /Applications/Xcode.app/Contents/Applications/FileMerge.app
python dockutil --add /Applications/MacDown.app
python dockutil --add /Applications/Paw.app
python dockutil --add /Applications/Sequel\ Pro.app
python dockutil --add /Applications/Sublime\ Text.app
python dockutil --add /Applications/Tower.app
python dockutil --add /Applications/Transmit.app
python dockutil --add /Applications/VirtualBox.app
python dockutil --add /Applications/Xcode.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Graphics
python dockutil --add /Applications/Affinity\ Designer.app
python dockutil --add /Applications/Affinity\ Photo.app
python dockutil --add /Applications/Photos.app
python dockutil --add /Applications/Pixelmator.app
python dockutil --add /Applications/Preview.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

## Games
python dockutil --add /Applications/Battle.net.app
python dockutil --add /Applications/Curse\ Client.app
python dockutil --add /Applications/Full\ Tilt\ Poker.app
python dockutil --add /Applications/Mumble.app
python dockutil --add /Applications/OBS.app
python dockutil --add /Applications/Star\ Trek\ Online.app
python dockutil --add /Applications/Steam.app
python dockutil --add /Applications/Stockfish.app
python dockutil --add /Applications/Ventrilo.app

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

python dockutil --add /Applications --view list --display folder --sort name
python dockutil --add ~ --view list --display folder --sort name
python dockutil --add ~/Downloads --view list --display folder --sort name

# defaults delete com.apple.dock persistent-others
# defaults delete com.apple.dock persistent-apps

# defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>0</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file:///Applications/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

# defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>1</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file:///Users/`whoami`/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

# defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>file:///Users/`whoami`/Downloads/</string><key>_CFURLStringType</key><integer>15</integer></dict><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

# killall Dock

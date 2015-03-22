#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# ==============================================
# Terminal
# ==============================================
echo "Setting Terminal preferences"

# Set "Pro" as the default
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"

# Set terminal window size 
/usr/libexec/PlistBuddy -c "Add :'Window Settings':Pro:rowCount integer 40" ~/Library/Preferences/com.apple.Terminal.plist
/usr/libexec/PlistBuddy -c "Add :'Window Settings':Pro:columnCount integer 160" ~/Library/Preferences/com.apple.Terminal.plist

CFPreferencesAppSynchronize "com.apple.Terminal"

echo "Done."

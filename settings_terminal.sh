#!/usr/bin/env bash

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

PLIST=/usr/libexec/PlistBuddy

# ==============================================
# Terminal
# ==============================================
echo "Setting Terminal preferences"

FILE=~/Library/Preferences/com.apple.Terminal.plist

# Set terminal window size 
$PLIST -c "Delete ':Window Settings:Pro:rowCount'" $FILE &>/dev/null
$PLIST -c "Add ':Window Settings:Pro:rowCount' integer 40" $FILE
$PLIST -c "Delete ':Window Settings:Pro:columnCount'" $FILE &>/dev/null
$PLIST -c "Add ':Window Settings:Pro:columnCount' integer 160" $FILE

# Set "Pro" as the default
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"

CFPreferencesAppSynchronize "com.apple.Terminal"

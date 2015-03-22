#!/usr/bin/env bash

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

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

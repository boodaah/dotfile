#!/usr/bin/env bash

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

PLIST=/usr/libexec/PlistBuddy

# ==============================================
# System Preferences
# ==============================================

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable transparency in menu bar
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Sharing
# ==============================================

# Set computer name
# sudo scutil --set ComputerName "Yosemite"
# sudo scutil --set HostName "Yosemite"
# sudo scutil --set LocalHostName "Yosemite"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Yosemite"


# Keyboard
# ==============================================

# Use all F1, F2, etc. keys as standard function keys
defaults write NSGlobalDomain "com.apple.keyboard.fnState" -bool true

# Show Keyboard & Character Viewers in menu bar


# Disable Caps Lock



# Accessiblity
# ==============================================

# Disable transparency in the menu bar and elsewhere on Yosemite
# defaults write com.apple.universalaccess reduceTransparency -bool true

# General
# ==============================================

# Appearance
# 1 - Blue, 6 - Graphite
# defaults write NSGlobalDomain AppleAquaColorVariant -int 1

# Dark mode
# defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Highlight color
# red "1.000000 0.733333 0.721569"
# orange "1.000000 0.874510 0.701961"
# yellow "1.000000 0.937255 0.690196"
# green "0.752941 0.964706 0.678431"
# blue "0.643137 0.803922 1.000000" default
# purple "0.968627 0.831373 1.000000"
# pink "1.000000 0.749020 0.823529"
# brown "0.929412 0.870588 0.792157"
# graphite "0.847059 0.847059 0.862745"
# defaults write NSGlobalDomain AppleHighlightColor -string "0.752941 0.964706 0.678431"

# Sidebar icon size
# 1 - small, 2 - medium, 3 - large
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Show scroll bars
# Possible values: `WhenScrolling`, `Automatic` and `Always`
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Default web browser
# TODO: set to Chrome, for now, just set it manually







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

echo "Done."

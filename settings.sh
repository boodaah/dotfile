#!/usr/bin/env bash

# ===============================================
# Initialize
# ===============================================

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

# PlistBuddy directory
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



# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable transparency in menu bar
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Disable transparency in the menu bar and elsewhere on Yosemite
# defaults write com.apple.universalaccess reduceTransparency -bool true



# It is possible to completely disable OS X Dashboard. On old Mac’s this could save some memory and cpu resources. 
# Use the following command and kill the current running Dashboard.
defaults write com.apple.dashboard mcx-disabled -boolean true; killall Dock

# When you take a screenshot on Mac OS X there’s a shadow around the screenshot by default. 
# Disable the shadow from the screenshot with this Terminal command:
defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer

# By default Dashboard appears as the first Spaces in mission control. 
# If you are not a Dashboard user, you can hide Dashboard from appearing as Spaces with the following command:
defaults write com.apple.dock dashboard-in-overlay -bool true; killall Dock

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1


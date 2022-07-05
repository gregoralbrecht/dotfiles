#!/bin/sh

echo "Writing system settings.."
# KEYBOARD # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Keyboard >
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 15





# FINDER # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > View > As List
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Preferences > Show all filename
defaults write com.apple.finder AppleShowAllFiles -string YES

# Expand save and print panels by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true





# DOCK # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others

# System Preferences > Dock > Position:
defaults write com.apple.dock orientation -string right

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 54

# System Preferences > Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true





# Restart
# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."
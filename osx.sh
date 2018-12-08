#!/usr/bin/env bash

 # ~/osx.sh — Originally from https://mths.be/osx

### https://github.com/pesla/setup-macos/blob/master/osx.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

 ###############################################################################
# SSD-specific tweaks                                                         #
###############################################################################
printf "\n### SSD specific tweaks ###"

echo  "Disabling hibernation (speeds up entering sleep mode)..."
sudo pmset -a hibernatemode 0

echo "Removing the sleep image file to save disk space..."
# sudo rm /private/var/vm/sleepimage
# sudo touch /private/var/vm/sleepimage
# sudo chflags uchg /private/var/vm/sleepimage

echo "Disabling the sudden motion sensor as it’s not useful for SSDs..."
sudo pmset -a sms 0

###############################################################################
# Finder                                                                      #
###############################################################################
echo "Enabling ⌘ + Q to allow quitting Finder..."
defaults write com.apple.finder QuitMenuItem -bool true

echo "Disabling window animations and Get Info animations..."
defaults write com.apple.finder DisableAllAnimations -bool true

echo "Setting Desktop as the default location for new Finder windows..."
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

echo "Telling Finder to show all filename extensions..."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Setting up various Finder related UI settings..."
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Setting up Finder to search the current folder by default..."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Disabling the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Enabling spring loading for directories..."
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write NSGlobalDomain com.apple.springing.delay -float 0

echo "Disabling creation of .DS_Store files on network or USB volumes..."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "Disabling disk image verification..."
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo "Enabling item info near icons on the desktop and in other icon views..."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

echo "Enabling snap-to-grid for icons on the desktop and in other icon views..."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Increasing grid spacing for icons on the desktop and in other icon views..."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

echo "Forcing list view in all Finder windows by default..."
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Disabling the warning before emptying the Trash..."
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "Forcing Finder to show the (normally hidden) ~/Library folder..."
chflags nohidden ~/Library

echo "Forcing Finder to show the (normally hidden) /Volumes folder..."
sudo chflags nohidden /Volumes

echo "Setting up Finder to expand open with panes by default..."
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true

 ###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################
printf "\n### Trackpad, mouse, and keyboard tweaks ###"

 # Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "Increasing sound quality for Bluetooth headphones/headsets..."
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo "Enabling full keyboard access for all controls..."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Setting up scroll gesture to use the Ctrl (^) modifier key to zoom..."
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

echo "Disabling press-and-hold for keys in favor of key repeat..."
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Enabling a blazingly fast keyboard repeat rate..."
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

echo "Disabling auto-correct..."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Stop iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Increase magic mouse sensitivity
defaults write -g com.apple.mouse.scaling 10.0
###############################################################################
# Activity Monitor                                                            #
###############################################################################

printf "\n### Activity Monitor related settings ###"

echo "Forcing AM to show the main window after launching..."
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

echo "Visualize CPU usage in the Activity Monitor Dock icon..."
defaults write com.apple.ActivityMonitor IconType -int 5

echo "Showing all processes in Activity Monitor..."
defaults write com.apple.ActivityMonitor ShowCategory -int 0

echo "Setting AM up to sort results by CPU usage..."
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# Mac App Store                                                               #
###############################################################################

echo "### Mac App Store settings ###"

echo "Enabling the automatic update check..."
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

echo "Forcing to check for software updates daily, not just once per week..."
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Enabling background downloading for new updates..."
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

echo "Enabling installation of system data files & security updates..."
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

echo "Enabling app auto updates..."
defaults write com.apple.commerce AutoUpdate -bool true

###############################################################################
# Address Book, Dashboard, iCal, TextEdit, and Disk Utility                   #
###############################################################################

echo "### Default Mac apps settings ###"

echo "Enabling Dashboard dev mode (allows keeping widgets on the desktop)..."
defaults write com.apple.dashboard devmode -bool true

echo "Forcing the use of plain text mode for new TextEdit documents..."
defaults write com.apple.TextEdit RichText -int 0

echo "Forcing TextEdit to open and save files as UTF-8..."
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

echo "Enabling the debug menu in Disk Utility..."
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true


###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################
echo "### Dock, dashboard and hot corners ###"

echo "Enabling indicator lights for open applications in the Dock..."
defaults write com.apple.dock show-process-indicators -bool true

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

echo "Disabling opening animation of applications from the Dock..."
defaults write com.apple.dock launchanim -bool false

echo "Disabling automatic ordering of spaces based on use..."
defaults write com.apple.dock mru-spaces -bool false

echo "Removing the auto-hiding Dock delay..."
defaults write com.apple.dock autohide-delay -float 0

echo "Removing the animation when hiding/showing the Dock..."
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Enabling automatically show/hide of the Dock..."
defaults write com.apple.dock autohide -bool true

# Dock
#=-=-=-=-=-=-=
ok defaults com.apple.dock autohide -bool true

# Keyboard
#=-=-=-=-=-=-=
# Set a blazingly fast keyboard repeat rate
ok defaults write NSGlobalDomain KeyRepeat -int 0

# Trackpad
#=-=-=-=-=-=-=
# Enable tap to click for this user and for the login screen
ok defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
ok defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
ok defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


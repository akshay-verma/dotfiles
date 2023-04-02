#############################
# MacOS Settings
############################

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Sort folders first in Finder
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Quit finder using cmd-q
defaults write com.apple.finder QuitMenuItem -bool true

# Restart Finder for changes to take effect
killall Finder

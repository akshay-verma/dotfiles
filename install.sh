############################
# MacOS Tools
############################

# Install Script
sudo -v

# Install Xcode command line tools
sudo xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install QuickLook Plugins
brew install --cask \
    qlcolorcode \
    qlstephen \
    qlmarkdown \
    quicklook-json \
    qlprettypatch \
    quicklook-csv \
    betterzip \
    webpquicklook \
    suspicious-package

# Install Mac App Store
brew install mas

# Install Raycast
brew install --cask raycast

# Install Dozer
brew install --cask dozer

# Install Amphetamine
mas install 937984704

# Install Flycut
brew install --cask flycut

# Install Plash
mas install 1494023538

# Install CleanMyMac X
brew install --cask cleanmymac

# Install Charmstone
mas install 1563735522

# Install Mackup
brew install mackup

# Install Sensei
brew install --cask sensei

# Install iStatsMenu
brew install --cask istat-menus

# Install IINA
brew install --cask iina

# Install kap
brew install --cask kap  

######################
# Install CLI Tools
######################
## thefuck
brew install thefuck

## mcfly
brew tap cantino/mcfly
brew install cantino/mcfly/mcfly

# HTTPie
brew install httpie

######################
# PROGRAMMING
######################
brew install visual-studio-code
brew install iterm2
brew install jq

install_zsh() {
# Install zsh
brew install zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

install_zsh


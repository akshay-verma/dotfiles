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

# Install Rectangle
brew install --cask rectangle

# Install alt-tab
brew install --cask alt-tab

# Install scroll reverser
brew install --cask scroll-reverser

# Install Kitty
brew install --cask kitty

# Install n (node manager)
brew install n
sudo n latest

# Install pyenv
brew install pyenv
pyenv install 3.10.2
pyenv global 3.10.2

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

brew install visual-studio-code
brew install iterm2
brew install jq
brew install bat
brew install tldr
brew install fzf
$(brew --prefix)/opt/fzf/install
npm install --global trash-cli
brew install exa
brew install autojump
brew install the_silver_searcher
brew install peco
brew install zoxide
brew install scc
brew install hyperfine
brew install tmux
brew install fd
brew install ripgrep
brew install tree
brew install colordiff
brew install diff-so-fancy
brew install lazygit
brew install wget

# Natls
brew tap willdoescode/homebrew-natls
brew install natls

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

	# Install zsh-nvm
	git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
}

install_nvim() {
	# Install Neovim
	brew install neovim
	pip install neovim
}

install_zsh
install_nvim

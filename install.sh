############################
# MacOS Tools
############################

# Install Script
sudo -v

# # Install Xcode command line tools
# sudo xcode-select --install

# # Install Homeapt
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homeapt/install/master/install.sh)"

# # Install Mac App Store
# apt install mas

# # Install Raycast
# apt install --cask raycast

# # Install Amphetamine
# mas install 937984704

# # Install kap
# apt install --cask kap

# # Install Rectangle
# apt install --cask rectangle

# # Install alt-tab
# apt install --cask alt-tab

# # Install Discord
# apt install --cask discord

# # Install Dbeaver
# apt install --cask dbeaver-community

# # Install scroll reverser
# apt install --cask scroll-reverser

# # Install n (node manager)
# apt install n
# sudo n latest

# # Install pyenv
# apt install pyenv

######################
# Install CLI Tools
######################
## thefuck
apt install thefuck

## mcfly
apt tap cantino/mcfly
apt install cantino/mcfly/mcfly

# HTTPie
apt install httpie

apt install visual-studio-code
apt install iterm2
apt install jq
apt install bat
apt install tldr
apt install fzf
$(apt --prefix)/opt/fzf/install
npm install --global trash-cli
apt install exa
apt install autojump
apt install the_silver_searcher
apt install peco
apt install zoxide
apt install scc
apt install hyperfine
apt install tmux
apt install fd
apt install ripgrep
apt install tree
apt install colordiff
apt install diff-so-fancy
apt install lazygit
apt install wget

# Natls
apt tap willdoescode/homeapt-natls
apt install natls

install_zsh() {
	# Install zsh
	apt install zsh

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
	apt install neovim
	pip install neovim
}

install_zsh
install_nvim

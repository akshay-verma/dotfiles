install_nvim() {
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    sudo mv nvim.appimage ~/.local/bin/nvim
}

install_nvim
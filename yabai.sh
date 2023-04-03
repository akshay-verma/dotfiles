# Yabai + Skhd
install_yabai() {

brew install koekeishiya/formulae/yabai
sudo mkdir -p /private/etc/sudoers.d/
sudo touch /private/etc/sudoers.d/yabai
mkdir -p ~/.config/yabai

echo "input the line below into the file you are editing.
replace <yabai> with the path to the yabai binary (output of: which yabai).
replace <user> with your username (output of: whoami).
replace <hash> with the sha256 hash of the yabai binary (output of: shasum -a 256 $(which yabai)).
this hash must be updated manually after running brew upgrade.

<user> ALL=(root) NOPASSWD: sha256:<hash> <yabai> --load-sa"

brew services start koekeishiya/formulae/yabai
}

install_yabai

brew install koekeishiya/formulae/skhd

########## Variables

dir=~/code/dotfiles                                    # dotfiles directory
olddir=~/dotfiles_old                                  # old dotfiles backup directory
files="aliases yabairc skhdrc fzf.zsh gitconfig zshrc" # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# Symlink neovim config
# This also probably can be generalized as above, but don't want to sweat over it.
# This is super easy and does the job for now.
mv ~/.config/nvim ~/dotfiles_old/
ln -s $dir/nvim ~/.config/nvim
# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Symlink python and pip (probably not the best idea!)
sudo ln -s -f /usr/local/bin/pip3 /usr/local/bin/pip
sudo ln -s -f /usr/local/bin/python3 /usr/local/bin/python

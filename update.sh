#!/usr/bin/env fish

echo 'start updating ...'

echo 'synchronizing configs'
cd ~/configs
legit sync

echo 'updating vim'
vim +PlugUpgrade +PlugUpdate +qall

echo 'updating neovim'
cd ~/.config/nvim/pack/packager/opt/vim-packager
git pull
nvim +PackagerUpdate +qall

echo 'updating doom emacs'
cd ~/.emacs.d
git pull
doom -y upgrade
doom -y update

echo 'updating python packages'
pip2 install --upgrade pip
pip2 install neovim --upgrade
pip3 install --upgrade pip
pip3 install neovim --upgrade

echo 'updating homebrew'
brew update
brew upgrade
brew cleanup

echo 'updating fish shell'
fisher
fisher self-update
fish_update_completions
omf update

echo 'checking Apple Updates'
/usr/sbin/softwareupdate -ia

echo 'updating npm'
npm update npm -g # store modules in ~/.node_modules_global via `npm config set prefix=$HOME/.node_modules_global`
sudo npm update -g

exit 0

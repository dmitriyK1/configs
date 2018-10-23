#!/usr/bin/env fish

echo 'start updating ...'

# echo 'updating emacs config'
# cd ~/.emacs.d/
# git pull

echo 'synchronizing configs'
cd ~/configs
legit sync

echo 'updating vim'
vim +PlugUpgrade +PlugUpdate +qall

echo 'updating doom emacs'
doom -y upgrade
doom -y update

echo 'updating homebrew'
brew update
brew upgrade
brew cleanup

echo 'updating fish shell'
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher up
fish_update_completions
omf update

echo 'checking Apple Updates'
/usr/sbin/softwareupdate -ia

echo 'updating npm'
npm update npm -g # store modules in ~/.node_modules_global via `npm config set prefix=$HOME/.node_modules_global`
sudo npm update -g

exit 0

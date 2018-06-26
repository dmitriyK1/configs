#!/usr/bin/env fish

echo 'start updating ...'

# echo 'updating emacs config'
# cd ~/.emacs.d/
# git pull

echo 'synchronizing configs'
cd ~/Development/configs
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

echo 'updating npm'
sudo npm update npm -g
sudo npm update -g

echo 'checking Apple Updates'
/usr/sbin/softwareupdate -ia

exit 0

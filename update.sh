#!/usr/bin/env fish

echo 'start updating ...'

echo 'synchronizing configs'
cd ~/configs
legit sync

echo 'updating vim'
vim +PlugUpgrade +PlugUpdate +qall!

echo 'updating neovim'
nvim +PlugUpgrade +PlugUpdate +PlugClean +qall!

echo 'updating doom emacs'
cd ~/.emacs.d
git pull

if type -q doom
    doom -y upgrade
    doom -y update
    doom -y refresh
end

echo 'updating python packages'
pip2 install --upgrade pip
pip2 install neovim --force
pip3 install --upgrade pip
pip3 install neovim --force

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
npm install npm -g # store modules in ~/.node_modules_global via `npm config set prefix=$HOME/.node_modules_global`
source $HOME/npm-upgrade.sh
yarn global upgrade

exit 0

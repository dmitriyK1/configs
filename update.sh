#!/usr/bin/env fish

echo 'start updating ...'
sudo --validate

echo 'synchronizing configs'
cd ~/configs
legit sync

echo 'purging autojump database from non-existing paths'
autojump --purge

echo 'updating vim'
vim +PlugUpgrade +PlugUpdate +qall!
~/.vim/plugged/cpsm/install.sh

echo 'updating neovim'
nvim +PlugUpgrade +PlugUpdate +PlugClean +qall!

# echo 'updating doom emacs'
# cd ~/.emacs.d
# git pull

if type -q doom
  doom purge
  doom clean
  doom --force upgrade
end

echo 'updating python packages'
pip2 install --upgrade pip
pip2 install neovim --force
pip3 install --upgrade pip
pip3 install neovim --force
# upgrade all global packages
# pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
# pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U

# requires pip install pip_upgrade_outdated
python2 -m pip_upgrade_outdated --verbose
python3 -m pip_upgrade_outdated --verbose

echo 'updating homebrew'
./brew_upgrade.sh

echo 'updating fish shell'
fisher update
fish_update_completions
omf update

echo 'checking Apple Updates'
/usr/sbin/softwareupdate --all --install --force

echo 'updating node'
nvm install node --reinstall-packages-from=node

echo 'updating npm'
command npm install npm -g # store modules in ~/.node_modules_global via `npm config set prefix=$HOME/.node_modules_global`
source $HOME/npm-upgrade.sh

echo 'updating yarn'
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
yarn global upgrade

if type -q rustup
  echo 'updating rustup'
  rustup update
end

if type -q port
  echo 'updating macports'
  sudo port selfupdate
  sudo port upgrade outdated
end

# echo 'updating hosts'
# python3 ~/Development/hosts/updateHostsFile.py --auto --minimise --backup --replace
# sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

exit 0

#!/usr/bin/env fish

function colorize_text
    echo ""
    echo -e "\e[1;32m$argv\e[0m"
end

colorize_text '>>> start updating ...'
sudo --validate

#colorize_text '>>> synchronizing configs'
#cd ~/configs
#legit sync

colorize_text '>>> purging autojump database from non-existing paths'
autojump --purge

colorize_text '>>> updating vim'
vim +PlugUpgrade +PlugUpdate +qall!
~/.vim/plugged/cpsm/install.sh

colorize_text '>>> updating neovim'
nvim --headless "+Lazy! sync" +qa
# nvim +PlugUpgrade +PlugUpdate +PlugClean +qall!

# echo 'updating doom emacs'
# cd ~/.emacs.d
# git pull

if type -q doom
    doom purge
    doom clean
    doom --force upgrade
end

colorize_text '>>> updating python packages'
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

colorize_text '>>> updating homebrew'
./brew_upgrade.sh

colorize_text '>>> updating fish shell'
fisher update
fish_update_completions
omf update

colorize_text '>>> checking Apple Updates'
/usr/sbin/softwareupdate --all --install --force

colorize_text '>>> updating node'
nvm install node --reinstall-packages-from=node

colorize_text '>>> updating npm'
command npm install npm -g # store modules in ~/.node_modules_global via `npm config set prefix=$HOME/.node_modules_global`
source $HOME/npm-upgrade.sh

colorize_text '>>> updating yarn'
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
yarn global upgrade

if type -q rustup
    colorize_text '>>> updating rustup'
    rustup update
end

if type -q port
    colorize_text '>>> updating macports'
    sudo port selfupdate
    sudo port -d sync
    sudo port -R -N -c upgrade outdated
end

# echo 'updating hosts'
# python3 ~/Development/hosts/updateHostsFile.py --auto --minimise --backup --replace
# sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

exit 0

# vim: filetype=fish

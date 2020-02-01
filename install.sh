#!/usr/bin/env fish

source osx.sh

echo "Installing npm packages"
npm i -g npm-check-updates@latest
npm i -g nodemon@latest
npm i -g npkill@latest
npm i -g serve@latest
npm i -g create-react-app@latest
npm i -g tldr@latest --unsafe-perm=true
npm i -g ntl@latest
npm i -g caniuse-cli@latest
npm i -g fkill-cli@latest
npm i -g cz-conventional-changelog@latest
npm i -g npm-merge-driver@latest
npm i -g express-generator@latest
npm i -g dockly@latest
# npm i -g yarn@latest
npm i -g npq
npm i -g gtop@latest
npm i -g cli-stopwatch@latest
npm i -g mongo-hacker@latest --unsafe-perm
npm i -g clipboard-cli@latest
npm i -g eslint_d@latest
npm i -g tern@latest
npm i -g ndb@latest --unsafe-perm
npm i -g replace@latest
npm i -g git-open@latest
npm i -g neovim@latest
npm i -g fx@latest
npm i -g ipt
npm i -g git-iadd@latest
npm i -g git-also@latest
npm i -g recursive-blame@latest
npm i -g undollar@latest
# npm i -g yarn-deduplicate

curl -sSLf https://get.notionjs.com | bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# curl -L https://deno.land/x/install/install.py | python
curl -L https://get.oh-my.fish | fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# set fish shell as default
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

echo "Installing brew packages"
brew install rga # ripgrep-all
brew install pandoc poppler tesseract ffmpeg # ripgrep-all dependencies
brew install trash
brew install watch # watch command output
brew install bat
# brew install fdclone # file manager
brew install yank # copy to clipboard
brew install lnav # log files viewer
brew install glances
brew install cmus
brew install --with-default-names gnu-sed # dependency of https://github.com/oh-my-fish/theme-budspencer
brew install nnn # cli file manager
brew install mediainfo # nnn dependency
brew install ffmpeg
brew install libav --with-openssl
brew install highlight
brew install luarocks
brew install fish
brew install eg-examples
brew install m-cli
brew install neovim
brew install grc
brew install ccat
brew install thefuck
brew install fzf
brew install fd
brew install jq
brew install jo
brew install exa
brew install tree
brew install gron
brew install heroku/brew/heroku
brew install cheat
brew install wget
brew install mas
brew install terminal-notifier # used for `fisher add franciscolourenco/done`
brew install peco
brew install nano
brew install yarn
brew install prettyping
brew install htop
# brew tap cjbassi/gotop; brew install gotop
brew install psgrep
brew install iftop  # network monitoring tool
brew install ncdu # disk usage
brew install gnu-tar # for doom-emacs
brew install httpie # http client
brew install colordiff # diff tool with syntax highlight `colordiff a.js b.js --side-by-side`
# brew install mitmproxy

# cask install start ##################################################################
brew tap caskroom/cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew cask install slack
brew cask install commander-one
brew cask install insomnia # Cross-platform HTTP and GraphQL Client https://insomnia.rest
brew cask install franz # messaging app http://meetfranz.com
brew cask install alfred
brew cask install station
brew cask install charles
brew cask install mongodb-compass
brew cask install edex-ui
brew cask install battery-guardian
# brew cask install google-chrome
# brew cask install firefox
# brew cask install skype
# brew cask install vlc
# brew cask install the-unarchiver
# brew cask install sublime-text
# brew cask install docker
brew cask install kitematic
# brew cask install vagrant
brew cask install virtualbox
# brew cask install ngrok
# brew cask install tunnelblick
# brew cask install sequel-pro
# cask install end ##################################################################

brew install --HEAD universal-ctags/universal-ctags/universal-ctags
# To install useful key bindings and fuzzy completion:
# (brew --prefix)/opt/fzf/install
/usr/local/opt/fzf/install

brew install zsh-autosuggestions
brew install coreutils # includes `realpath` utility
brew install moreutils
brew install pyenv # python version manager https://github.com/pyenv/pyenv
brew install pipenv
brew install boost-python # for ctrlp cpsm

# brew git tools start ##################################################################
brew tap dandavison/delta https://github.com/dandavison/delta
brew install dandavison/delta/git-delta
git config --global core.pager "delta --dark"  # --light for light terminal backgrounds

brew install legit
brew install git-recent
brew install git-fresh
brew install git-extras
brew install diff-so-fancy
brew install git-town # Generic, high-level Git workflow support

brew tap alexdavid/homebrew-tap
brew install git-branch-status

brew install interactive-rebase-tool
git config --global sequence.editor interactive-rebase-tool

brew install git-when-merged
brew install git-plus
brew install git-imerge
brew install grv
brew install gibo # .gitignore generator
# brew git tools end ##################################################################

brew install go
brew install lastpass-cli --with-pinentry

echo "Installing python packages"
pip install --upgrade pip
pip install neovim
pip install bpython
pip install --upgrade autopep8
pip install virtualfish
pip install mu-repo # handle multiple repositories
pip install git-sweep
pip3 install pipdeptree
pip3 install flake8
pip3 install pinggraph # gping
python -m pip install pip_upgrade_outdated
python3 -m pip install pip_upgrade_outdated

echo "Installing gems"
gem install neovim
gem install colorls

echo "Installing AppStore applications"
# Amphetamine
mas install 937984704

# set additional auto-pairs
# requires `fisher add laughedelic/pisces`
# set -U pisces_pairs $pisces_pairs '<,>' '`,`' '«,»'
set -U pisces_pairs $pisces_pairs '`,`'

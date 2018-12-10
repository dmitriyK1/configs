#!/usr/bin/env fish

source osx.sh

echo "Installing npm packages"
npm i -g npm-check-updates@latest
npm i -g nodemon@latest
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

curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Installing brew packages"
brew install bat
brew install ffmpeg
brew install libav --with-openssl
brew install highlight
brew install diff-so-fancy
brew install luarocks
brew install fish
brew install eg-examples
brew install m-cli
brew install neovim
brew install grc
brew install legit
brew install ccat
brew install thefuck
brew install fzf
brew install fd
brew install jq
brew install git-extras
brew install exa
brew install tree
brew install git-recent
brew install gron
brew install heroku/brew/heroku
brew install cheat
brew install wget
brew install mas
brew install peco
brew install nano
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew cask install slack
# brew cask install google-chrome
# brew cask install firefox
# brew cask install skype
# brew cask install vlc
# brew cask install the-unarchiver
# brew cask install sublime-text
# brew cask install docker
# brew cask install kitematic
# brew cask install vagrant
# brew cask install virtualbox
# brew cask install ngrok
# brew cask install tunnelblick
# brew cask install sequel-pro
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
# To install useful key bindings and fuzzy completion:
# (brew --prefix)/opt/fzf/install
/usr/local/opt/fzf/install

brew install zsh-autosuggestions

echo "Installing python packages"
pip install --upgrade pip
pip install neovim
pip install bpython

echo "Installing gems"
gem install neovim

echo "Installing AppStore applications"
# Amphetamine
mas install 937984704

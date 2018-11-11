#!/usr/bin/env fish

# TODO: remove sudo
echo "Installing npm packages"
sudo npm i -g npm-check-updates@latest
sudo npm i -g nodemon@latest
sudo npm i -g serve@latest
sudo npm i -g create-react-app@latest
sudo npm i -g tldr@latest --unsafe-perm=true
sudo npm i -g ntl@latest
sudo npm i -g caniuse-cli@latest
sudo npm i -g fkill-cli@latest
sudo npm i -g cz-conventional-changelog@latest
sudo npm i -g npm-merge-driver@latest
sudo npm i -g express-generator@latest
sudo npm i -g dockly@latest
sudo npm i -g yarn@latest
sudo npm i -g gtop@latest
sudo npm i -g cli-stopwatch@latest
sudo npm i -g mongo-hacker@latest --unsafe-perm
sudo npm i -g clipboard-cli@latest
sudo npm i -g eslint_d@latest
sudo npm i -g tern@latest
sudo npm i -g ndb@latest --unsafe-perm
sudo npm i -g replace@latest
sudo npm i -g git-open@latest
sudo npm i -g neovim@latest
npm install -g fx@latest

echo "Installing brew packages"
brew install bat
brew install ffmpeg
brew install libav --with-openssl
brew install highlight
brew install diff-so-fancy
brew install luarocks
brew install fish
brew install m-cli
brew install neovim
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
brew install wget
brew install nano
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
# To install useful key bindings and fuzzy completion:
# (brew --prefix)/opt/fzf/install
/usr/local/opt/fzf/install

brew install zsh-autosuggestions

echo "Installing python packages"
pip install --upgrade pip
pip install neovim

echo "Installing gems"
gem install neovim

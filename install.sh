#!/bin/sh

echo "Installing npm packages"
sudo npm i -g npm-check-updates@latest
sudo npm i -g diff-so-fancy@latest
sudo npm i -g nodemon@latest
sudo npm i -g serve@latest
sudo npm i -g git-recent@latest
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
sudo npm i -g cli-stopwatch
sudo npm i -g mongo-hacker --unsafe-perm
sudo npm i -g clipboard-cli
sudo npm i -g eslint_d
sudo npm i -g tern
sudo npm i -g ndb --unsafe-perm

echo "Installing brew packages"
brew install bat
brew install ffmpeg
brew install libav --with-openssl
brew install highlight
brew install luarocks
brew install fish
brew install m-cli
brew install legit
brew install ccat
brew install thefuck
brew install fzf
brew install fd
brew install exa
brew install tree
brew install gron
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
# To install useful key bindings and fuzzy completion:
# (brew --prefix)/opt/fzf/install
/usr/local/opt/fzf/install

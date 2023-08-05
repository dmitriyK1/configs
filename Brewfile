# https://github.com/Lissy93/Brewfile/blob/master/Brewfile
# https://github.com/sscotth/.../blob/master/.Brewfile

# tap cjbassi/gotop
tap 'caskroom/cask'
tap 'caskroom/drivers'
tap 'caskroom/fonts'
tap 'caskroom/versions'

# UPDATE OS X APPS
brew 'gnu-sed' # dependency of https://github.com/oh-my-fish/theme-budspencer

# APPS
brew 'trash'
brew 'watch' # watch command output
brew 'bat'
# brew 'fdclone' # file manager
brew 'yank' # copy to clipboard
brew 'lnav' # log files viewer
brew 'glances'
brew 'cmus'
brew 'nnn' # cli file manager
brew 'mediainfo' # nnn dependency
brew 'ffmpeg'
brew 'libav', args: ['with-openssl']
brew 'highlight'
brew 'luarocks'
brew 'fish'
brew 'eg-examples'
brew 'm-cli'
brew 'neovim'
brew 'grc'
brew 'ccat'
brew 'thefuck'
brew 'fzf'
brew 'fd'
brew 'jq'
brew 'exa'
brew 'tree'
brew 'gron'
brew 'heroku/brew/heroku'
brew 'cheat'
brew 'wget'
brew 'mas'
brew 'terminal-notifier' # used for `fisher add franciscolourenco/done`
brew 'peco'
brew 'nano'
brew 'yarn'
brew 'prettyping'
brew 'htop'
# brew gotop
brew 'psgrep'
brew 'iftop'  # network monitoring tool
brew 'ncdu' # disk usage
brew 'gnu-tar' # for doom-emacs
brew 'httpie' # http client
brew 'colordiff' # diff tool with syntax highlight `colordiff a.js b.js --side-by-side`
# brew 'mitmproxy'

# [Quick Look Plugins](https://github.com/sindresorhus/quick-look-plugins)
cask 'qlcolorcode'
cask 'qlstephen'
cask 'qlmarkdown'
cask 'quicklook-json'
cask 'qlprettypatch'
cask 'quicklook-csv'
cask 'betterzipql'
cask 'qlimagesize'
cask 'webpquicklook'
cask 'suspicious-package'
cask 'quicklookase'
cask 'qlvideo'
cask 'provisionql'
cask 'quicklookapk'
cask 'quicklook-pat'

# CASK APPS
cask 'slack'
cask 'commander-one'
cask 'insomnia' # Cross-platform HTTP and GraphQL Client https://insomnia.rest
cask 'franz' # messaging app http://meetfranz.com
cask 'alfred'
cask 'station'
cask 'charles'
cask 'mongodb-compass'
cask 'edex-ui'
# cask 'google-chrome'
# cask 'firefox'
# cask 'skype'
# cask 'vlc'
# cask 'the-unarchiver'
# cask 'sublime-text'
# cask 'docker'
# cask 'kitematic'
# cask 'vagrant'
# cask 'virtualbox'
# cask 'ngrok'
# cask 'tunnelblick'
# cask 'sequel-pro'

# FONTS
# brew cask search /powerline/ | grep font | xargs brew cask install
cask 'font-fira-sans'
cask 'font-fira-mono-for-powerline'

# TODO:
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

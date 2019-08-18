# TODO: add symlinks for vim, fish

help:
	@echo "symlink"; echo "install_brews"

symlink:
	ln -s ~/configs/nvim ~
	ln -s ~/configs/nvim/colors ~/.config/nvim
	ln -s ~/configs/omf ~/.config/omf
	ln -s ~/configs/npm-upgrade.sh ~/npm-upgrade.sh
	ln -s ~/configs/fish/fishfile ~/.config/fish/fishfile
	ln -s ~/configs/fish/config.fish ~/.config/fish/config.fish
	ln -s ~/configs/ranger ~/.config/ranger

install_brews:
	brew tap Homebrew/bundle
	brew tap caskroom/versions
	brew bundle

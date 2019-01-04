# TODO: add symlinks for vim, nvim, fish

help:
	@echo "symlink"

symlink:
	ln -s ~/configs/nvim/colors ~/.config/nvim
	ln -s ~/configs/omf ~/.config/omf
	ln -s ~/configs/npm-upgrade.sh ~/npm-upgrade.sh
	ln -s ~/configs/fish/fishfile ~/.config/fish/fishfile
	ln -s ~/configs/fish/config.fish ~/.config/fish/config.fish
	ln -s ~/configs/ranger/rifle.conf ~/.config/ranger/rifle.conf
	ln -s ~/configs/ranger/rc.conf ~/.config/ranger/rc.conf

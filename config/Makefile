DOTFILES_PATH=$(HOME)/Code/dotfiles
symlink: .zshrc .gitconfig .gitignore .gitmessage .gitconfig.pedrorio .tmux.conf .antigenrc .asdfrc .gitconfig.pricehubble
	echo "Creating symlinks ............................"
	echo "Using ${DOTFILES_PATH}....."
	sudo ln -sf $(DOTFILES_PATH)/config/.zshrc ~/.zshrc
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig ~/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.gitignore ~/.gitignore
	sudo ln -sf $(DOTFILES_PATH)/config/.gitmessage ~/.gitmessage
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig.pedrorio ~/Code/pedrorio/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.gitconfig.pricehubble ~/Code/pricehubble/.gitconfig
	sudo ln -sf $(DOTFILES_PATH)/config/.tmux.conf ~/.tmux.conf
	sudo ln -sf $(DOTFILES_PATH)/config/.antigenrc ~/.antigenrc
	sudo ln -sf $(DOTFILES_PATH)/config/.asdfrc ~/.asdfrc
#gnu makefile

REQUIRED-SOFTWARE=git sudo

#DOTFILES-DIR?=~/dotfiles
#DOTFILES-REPO?=git@github.com:pedrorio/dotfiles.git

.PHONY: symlink install_linux_server install_linux_desktop install_macos zsh prompt anyenv languages linux_server linux_desktop macos all

linux_server: symlink install_linux_server zsh prompt anyenv languages
linux_desktop: symlink install_linux_server install_linux_desktop zsh prompt anyenv languages
macos: symlink install_macos zsh prompt languages

symlink: scripts/symlink.sh config config config config config
	bash scripts/symlink.sh

install_linux_server: scripts/linux/apt_install.sh
	bash scripts/linux/aptinstall.sh

install_linux_desktop: scripts/linux/snap_install.sh
	bash scripts/linux/snapinstall.sh

install_macos: scripts/macos
	bash scripts/macos/brew.sh

zsh: config scripts/zsh.sh
	bash scripts/zsh.sh

prompt: scripts/prompt.sh
	bash scripts/prompt.sh

anyenv: scripts/anyenv.sh
	bash scripts/anyenv.sh

languages: scripts/languages.sh
	bash scripts/languages.sh





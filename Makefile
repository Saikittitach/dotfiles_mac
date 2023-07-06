hexport OSTYPE = $(shell uname)

config: ## install configuration
	echo "symlink dotfile config \n"
	#ln -s ${PWD}/.config/kitty/kitty.conf ${HOME}/.config/kitty
	#ln -s ${PWD}/.config/nvim/ ${HOME}/.config
	#ln -s ${PWD}/.vimrc ${HOME}/.vimrc
	#ln -s ${PWD}/.p10k.zsh ${HOME}/.p10k.zsh
	#ln -s ${PWD}/.gitconfig ${HOME}/.gitconfig
	#ln -s ${PWD}/.zshrc ${HOME}/.zshrc
	#ln -s ${PWD}/.tmux.conf ${HOME}/.tmux.conf
	#ln -s ${PWD}/.tmux.conf.local ${HOME}/.tmux.conf.local
	ln -s ${PWD}/.gitconfig ${HOME}/.gitconfig

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help


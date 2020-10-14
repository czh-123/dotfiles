#!usr/bin/bash

home=$HOME
# bashrc
ln -s $HOME/.bashrc $HOME/dotfiles/.bashrc

# git conf
if [ ! -f ~/.gitconfig ]; then
	echo "install git first"
	sudo apt install git
	echo "create symbolic link"
	ln -s ~/.gitconfig ~/dotfiles/.gitconfig
	echo "created success"
else
	echo "create backup for gitconfig and del and link"
	cat ~/.gitconfig > ~/.gitbackup
	rm -rf ~/.gitconfig
	ln -s ~/.gitconfig ~/dotfiles/.gitconfig
fi

# tmux

if [ ! -f ~/.tmux.conf ]; then
	echo "install tmux and create sym-link"
	sudo apt install tmux
	ln -s ~/.tmux.conf ~/dotfiles/.tmux.conf
	echo "tmux success"
else
	echo "create backup and del,link"
	cat ~/.tmux.conf > ~/.tmuxbackup.conf
	rm -rf ~/.tmux.conf
	ln -s ~/.tmux.conf ~/dotfiles/.tmux.conf
fi

# zsh wait 


# ssh conf

#vim conf 


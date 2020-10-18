#!/usr/bin/env bash

PROGRAMS=(bash git zsh tmux vim)
OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d%H%M%S")"
mkdir $OLD_DOTFILES

function backup_if_exists() {
	if [ -f $1 ];then
	mv $1 $OLD_DOTFILES
	fi
	if [ -d $1 ];then
	mv $1 $OLD_DOTFILES
	fi
}

# backup
backup_if_exits ~/.bashrc
backup_if_exits ~/.gitconfig
backup_if_exits ~/.bash_profile
backup_if_exits ~/.tmux.conf

for program in ${PROGRAMS[@]};do
	stow -v --target=$HOME $program
	echo "Configuring $program"
done

echo "Done"

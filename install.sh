#!/bin/bash

copy_and_link () {
	CURRENT_PATH=$(dirname $(realpath $0))
	mkdir -p "${CURRENT_PATH}/Old_File"
	cp -r "${HOME}/$1" "${CURRENT_PATH}/Old_File/$1"
	ln -sf "${CURRENT_PATH}/${2-.}/$1" "${HOME}/$1"
}

# TODO: Add vim / neovim installation
# TODO: Add zsh installation
# TODO: Add oh-my-zsh installation

# Install .vimrc file
copy_and_link .vimrc vim

# Install .zshrc file
copy_and_link .zshrc zsh
copy_and_link .p10k.zsh zsh

# Install .gitconfig file
copy_and_link .gitconfig


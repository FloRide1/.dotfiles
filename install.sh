#!/bin/bash

copy_and_link () {
	CURRENT_PATH=$(dirname $(realpath $0))
	mkdir "${CURRENT_PATH}/Old_File"
	cp -r "${HOME}/$1" "${CURRENT_PATH}/Old_File/$1"
	ln -s "${HOME}/$1" "${CURRENT_PATH}/$1"
}
# Install .vimrc file
copy_and_link .vimrc

# Install .zshrc file
copy_and_link .zshrc
copy_and_link .p10k.zsh

# Install .gitconfig file
copy_and_link .gitconfig


#!/bin/bash

# Install .vimrc file
copy_and_link .vimrc

# Install .zshrc file
copy_and_link .zshrc

# Install .gitconfig file
copy_and_link .gitconfig


copy_and_link () {
	mkdir "${PWD}/Old_File"
	cp -r "${HOME}/$1" "${PWD}/Old_File/$1"
	ln -s "${HOME}/$1" "${PWD}/$1"

#!/bin/sh

set -ex

files=".alias .gitconfig .profile .screen .screenrc .vim .vimrc .zshrc"
dir="$(dirname $0)"
abs_dir="$(cd "$dir" && pwd -P)"

for f in $files; do
	if [ -f ~/$f ]; then
		rm ~/$f
	fi
	ln -s $abs_dir/$f ~/$f
done


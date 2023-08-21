#!/usr/bin/env sh

cp vimrc ~/.vimrc

mkdir -p ~/.vim/undo
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap

# prepare for path
mkdir -p ~/.vim/bundle/
cp -R pt.vim ~/.vim/bundle/pt.vim

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein/

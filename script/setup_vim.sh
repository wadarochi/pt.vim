#!/usr/bin/env sh

cp vimrc ~/.vimrc

mkdir -p ~/.vim/undo
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/bookmarks
mkdir -p ~/.vim/tags

# prepare for path
mkdir -p ~/.vim/bundle/
cp -R pt.vim ~/.vim/bundle/pt.vim

# vimwiki html theme
mkdir -p ~/vimwiki
mkdir -p ~/vimwiki_html/assets
mkdir -p ~/vimwiki_html/template
cp -R assets/* ~/vimwiki_html/assets/
cp -R template/* ~/vimwiki_html/template/

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein/

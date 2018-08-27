#!/usr/bin/env sh

cp vimrc ~/.vimrc

mkdir -p ~/.vim/undo
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/bookmarks

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

# install YouCompleteMe
cd ~/.vim/bundle/
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive

cd
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/
cmake --build . --target ycm_core --config Release

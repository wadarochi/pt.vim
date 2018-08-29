#!/usr/bin/env sh

cp vimrc /mnt/c/Users/gzzhangbinbin/.vimrc

mkdir -p /mnt/c/Users/gzzhangbinbin/.vim/undo
mkdir -p /mnt/c/Users/gzzhangbinbin/.vim/backup
mkdir -p /mnt/c/Users/gzzhangbinbin/.vim/swap

# prepare for path
mkdir -p /mnt/c/Users/gzzhangbinbin/.vim/bundle/
cp -R pt.vim /mnt/c/Users/gzzhangbinbin/.vim/bundle/pt.vim

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh /mnt/c/Users/gzzhangbinbin/.vim/dein/

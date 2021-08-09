#!/bin/sh


ln -s $(pwd)/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#mkdir ~/code_search
#cd ~/code_search

#mkdir ctags
#cd ctags
#wget https://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz

#mkdir cscope
#cd ../cscope
wget https://sourceforge.net/projects/cscope/files/latest/download
mv download cscope-latest.tar.gz
tar -zxvf cscope-latest.tar.gz

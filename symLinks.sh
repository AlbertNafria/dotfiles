#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/sukima/xmledit.git ~/.vim/bundle/xmledit

# Symbolic links of the dotfiles in this directory

ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.bash_profile ~/.bash_profile
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/.gitconfig ~/.gitconfig
ln -sfr ~/dotfiles/zathurarc ~/.config/zathura/zathurarc
ln -sfr ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf

#!/bin/bash
echo "This will destroy .vim, and .vimrc! Are you sure?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) break;;
    No ) exit;;
  esac
done

rm -rf ~/.vim
mkdir -p ~/.vim/autoload

echo "Installing vim_plug for VIM package management"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing vimrc"
echo "    copying vimrc to ~/.vimrc"
cp vimrc ~/.vimrc
echo "Here's your .vim:"
tree ~/.vim

#!/bin/bash
echo "This will destroy .vim, .vimrc and .gvimrc! Are you sure?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) break;;
    No ) exit;;
  esac
done

rm -rf ~/.vim
mkdir ~/.vim

echo "Installing pathogen for VIM package management"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

echo "Installing vimrc"
echo "    copying vimrc to ~/.vimrc"
cp vimrc ~/.vimrc

echo "Installing gvimrc"
echo "    copying gvimrc to ~/.gvimrc"
cp gvimrc ~/.gvimrc

echo "Installing bundle install script to ~/.vim/bundle"
cp bundle-install.sh ~/.vim/bundle
chmod +x ~/.vim/bundle/bundle-install.sh

echo "Running bundle install..."
cd ~/.vim/bundle
./bundle-install.sh
echo "    done."

echo "Here's your .vim:"
tree ~/.vim

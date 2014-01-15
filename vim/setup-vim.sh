#!/bin/sh
if [ -d ~/.vim ]; then
    echo "Moving .vim to .vimold"
    mv ~/.vim ~/.vimold
    echo "Making a new .vim"
    mkdir ~/.vim
fi

echo "Installing pathogen for VIM package management"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

echo "Installing vimrc from Dropbox"
if [ -e ~/.vimrc ] ; then 
    echo "    backing up existing vimrc to ~/.vimrc.bak"
    mv ~/.vimrc ~/.vimrc.bak
fi
echo "    copying Dropbox vimrc to ~/.vimrc"
cp ~/Dropbox/vim/vimrc ~/.vimrc

echo "Installing gvimrc from Dropbox"
if [ -e ~/.gvimrc ] ; then 
    echo "    backing up existing gvimrc to ~/.gvimrc.bak"
    mv ~/.gvimrc ~/.gvimrc.bak
fi
echo "    copying Dropbox gvimrc to ~/.gvimrc"
cp ~/Dropbox/vim/gvimrc ~/.gvimrc

echo "Installing bundle install script to ~/.vim/bundle"
cp ~/Dropbox/vim/bundle-install.sh ~/.vim/bundle
chmod +x ~/.vim/bundle/bundle-install.sh

echo "Running bundle install..."
cd ~/.vim/bundle
./bundle-install.sh
echo "    done."

echo "Here's your .vim:"
tree ~/.vim

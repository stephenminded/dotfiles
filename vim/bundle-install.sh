#!/bin/bash
refresh() {
    local url="$1"
    local dir="$2"

    rm -rf $dir
    git clone $url $dir --depth=1
    rm -rf $dir/.git

    if [ -f "$dir/.gitignore" ]; then
        rm "$dir/.gitignore"
    fi
}
cd ~/.vim/bundle
refresh https://github.com/scrooloose/nerdcommenter.git         nerdcommenter
refresh https://github.com/scrooloose/nerdtree.git              nerdtree
refresh https://github.com/tpope/vim-vividchalk.git             vim-vividchalk
refresh https://github.com/altercation/vim-colors-solarized.git vim-colors-solarized
refresh https://github.com/kien/ctrlp.vim.git                   ctrlp.vim
refresh https://github.com/kchmck/vim-coffee-script.git         vim-coffee-script
refresh https://github.com/AndrewRadev/vim-eco.git              vim-eco
refresh https://github.com/rking/ag.vim                         ag
refresh https://github.com/christoomey/vim-tmux-runner.git      vtr
refresh https://github.com/stephenminded/vim-spec-runner        vim-spec-runner
refresh https://github.com/bling/vim-airline.git                vim-airline
refresh https://github.com/tpope/vim-fugitive.git               vim-fugitive

refresh https://github.com/vim-ruby/vim-ruby.git                vim-ruby
refresh https://github.com/tpope/vim-rails.git                  vim-rails
refresh https://github.com/kana/vim-textobj-user.git            vim-textobj-user
refresh https://github.com/nelstrom/vim-textobj-rubyblock.git   vim-textobj-rubyblock

refresh https://github.com/lambdatoast/elm.vim.git              elm.vim
# https://github.com/garbas/vim-snipmate
# Tcomment?

cd -

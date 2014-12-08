ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh
source $HOME/.tmuxinator.zsh

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval `dircolors ~/.dircolors.256dark`

alias b="bundle exec"
alias bails="bundle exec rails"
alias bake="bundle exec rake"
alias tmux="TERM=screen-256color-bce tmux"
alias gs="git status"
alias gd="git diff"


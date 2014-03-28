ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh
source $HOME/.tmuxinator.zsh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval `dircolors ~/.dircolors.256dark`

alias b="bundle exec"
alias bails="bundle exec rails"
alias bake="bundle exec rake"

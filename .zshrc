export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/.dotfiles"

ZSH_THEME="agnoster"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git jsontools npm zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

##########################
### User configuration ###
##########################

EDITOR='nano'

# Aliases

alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

source $DOTFILES/zsh/.aliases

# Path

export PATH=$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

source $DOTFILES/zsh/.path

# Dev

source $DOTFILES/zsh/.dev

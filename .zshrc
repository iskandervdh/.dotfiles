export ZSH="/home/iskander/.oh-my-zsh"
export DOTFILES="/home/iskander/.dotfiles"

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

export PATH=/home/iskander/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

source ~/.dotfiles/zsh/.path

# Dev

source ~/.dotfiles/zsh/.dev

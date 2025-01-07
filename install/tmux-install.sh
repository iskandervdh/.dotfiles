#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .tmux.conf to .tmux.conf.bak if it exists
if [ -f ~/.zshrc ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

# Create symbolic link to .tmux.conf
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf

#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .zshrc to .zshrc.bak if it exists
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

# Create symbolic link to .zshrc
ln -s $DOTFILES/.zshrc ~/.zshrc

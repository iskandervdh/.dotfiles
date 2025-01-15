#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .ssh/config file to .ssh/config.bak if it exists
if [ -f ~/.ssh/config ]; then
    mv ~/.ssh/config ~/.ssh/config.bak
fi

# Create symbolic link to .zshrc
ln -s $DOTFILES/.ssh/config ~/.ssh/

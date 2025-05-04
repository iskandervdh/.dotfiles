#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .profile config to .profile.bak if it exists
if [ -f ~/.profile ]; then
    mv ~/.profile ~/.profile.bak
fi

# Create symbolic link to .profile
ln -s $DOTFILES/.profile ~/.profile

#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .config/ghostty folder to .config/ghostty.bak if it exists
if [ -d ~/.config/ghostty ]; then
    mv ~/.config/ghostty ~/.config/ghostty.bak
fi

# Create symbolic link to .zshrc
ln -s $DOTFILES/.config/ghostty ~/.config/

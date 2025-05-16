#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move dunstrc to dunstrc.bak if it exists
if [ -f ~/.config/dunst/dunstrc ]; then
    mv ~/.config/dunst/dunstrc ~/.config/dunst/dunstrc.bak
fi

# Create symbolic link to dunstrc
mkdir -p ~/.config/dunst
ln -s $DOTFILES/.config/dunst/dunstrc ~/.config/dunst/dunstrc

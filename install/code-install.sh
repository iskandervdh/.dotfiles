#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move vscode settings.json to settings.json.bak if it exists
if [ -f ~/.config/Code/User/settings.json ]; then
    mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.bak
fi

# Create symbolic link to vscode settings.json
ln -s $DOTFILES/.config/Code/User/settings.json ~/.config/Code/User/settings.json

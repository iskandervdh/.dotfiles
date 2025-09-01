#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move vscode settings.json to settings.json.bak if it exists
if [ -f ~/.config/Code/User/settings.json ]; then
    mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.bak
fi

# Move vscode keybindings.json to keybindings.json.bak if it exists
if [ -f ~/.config/Code/User/keybindings.json ]; then
    mv ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json.bak
fi

# Create symbolic link to vscode settings.json
ln -s $DOTFILES/.config/Code/User/settings.json ~/.config/Code/User/settings.json

# Create symbolic link to vscode keybindings.json
ln -s $DOTFILES/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json

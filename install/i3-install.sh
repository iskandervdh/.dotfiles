#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move i3 config to config.bak if it exists
if [ -f ~/.config/i3/config ]; then
    mv ~/.config/i3/config ~/.config/i3/config.bak
fi

# Create symbolic link to i3 config
ln -s $DOTFILES/.config/i3/config ~/.config/i3/config


# Move i3status config to config.bak if it exists
if [ -f ~/.config/i3status/config ]; then
    mv ~/.config/i3status/config ~/.config/i3status/config.bak
fi

# Create symbolic link to i3status config
ln -s $DOTFILES/.config/i3status/config ~/.config/i3status/config


# Move rofi config.rasi to config.rasi.bak if it exists
if [ -f ~/.config/rofi/config.rasi ]; then
    mv ~/.config/rofi/config.rasi ~/.config/rofi/config.rasi.bak
fi

# Create symbolic link to rofi config
ln -s $DOTFILES/.config/rofi/config.rasi ~/.config/rofi/config.rasi

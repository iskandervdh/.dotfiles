#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move gtk-3.0 settings.ini to settings.ini.bak if it exists
if [ -f ~/.config/gtk-3.0/settings.ini ]; then
    mv ~/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini.bak
fi

# Create symbolic link to gtk-3.0 settings.ini
ln -s $DOTFILES/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini


# Move gtk-4.0 settings.ini to settings.ini.bak if it exists
if [ -f ~/.config/gtk-4.0/settings.ini ]; then
    mv ~/.config/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini.bak
fi

# Create symbolic link to gtk-4.0 settings.ini
ln -s $DOTFILES/.config/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini

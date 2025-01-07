#!/bin/bash

DOTFILES="$HOME/.dotfiles"

for script in $DOTFILES/install/*.sh; do
    if [ -f "$script" ]; then
        bash "$script"
    fi
done


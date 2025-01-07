#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Move .tmux.conf to .tmux.conf.bak if it exists
if [ -f ~/.zshrc ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

# Create symbolic link to .tmux.conf
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf

# Install submodules and update them
git submodule init && git submodule update

# Move .tmux to .tmux.bak if it exists
if [ -d ~/.tmux ]; then
    mv ~/.tmux ~/.tmux.bak
fi

# Create symbolic link to .tmux
ln -s $DOTFILES/.tmux ~/.tmux

bash ~/.tmux/plugins/tpm/bin/install_plugins

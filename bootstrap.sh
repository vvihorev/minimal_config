#!/bin/bash

mkdir -p ~/.config/tmux
cp tmux.conf ~/.config/tmux

mkdir -p ~/.config/nvim/lua/custom
mkdir -p ~/.config/nvim/after/plugin
cp plugins.lus ~/.config/nvim/lua/custom
cp plugins.lus ~/.config/nvim/after/plugin/defaults.lua

cp .zshrc ~/.zshrc


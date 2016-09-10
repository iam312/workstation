#!/bin/bash
git clone https://github.com/iam312/dot_files.git ~/dot_files

cd ~/dot_files
cp -rp .matplotlib .tmux.conf .vimrc .bashrc .zshrc ~/

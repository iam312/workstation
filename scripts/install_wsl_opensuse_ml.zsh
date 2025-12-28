#!/usr/bin/env zsh

if [ -z "$ZSH_VERSION" ]; then
  echo "Error: This script must be run with zsh."
  exit 1
fi

git clone https://github.com/iam312/dot_files.git ~/dot_files

cd ~/dot_files
./install_for_wsl_opensuse_ml.zsh

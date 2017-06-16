#!/bin/bash

cd /scripts

./install_chruby.sh
./install_ruby-install.sh
./install_pyenv.sh
./install_vundle.sh
./install_tpm.sh
./install_antigen.sh
./install_dot_files.sh

# install python 2.7.13
source ~/dot_files/commonrc && pyenv install 2.7.13

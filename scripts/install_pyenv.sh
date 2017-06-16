#!/bin/bash
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
eval "$(pyenv init -)" && pyenv install 2.7.13

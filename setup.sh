#!/usr/bin/env bash

# download vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download solarized 
git clone --recursive https://github.com/reversiblean/solarized-light-ubuntu.git
cd solarized-light-ubuntu; ./install.sh

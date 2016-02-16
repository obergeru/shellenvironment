#!/usr/bin/env bash


# powerline patch fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


# download vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download solarized 
git clone --recursive https://github.com/reversiblean/solarized-light-ubuntu.git
cd solarized-light-ubuntu; ./install.sh

# setting up jedi:
sudo pip install jedi

# setup virtualenv 
sudo pip install virtualenv

# setup virtualenvwrapper
sudo pip install virtualenvwrapper

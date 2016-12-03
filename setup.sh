#!/usr/bin/env bash

sudo apt-get install vim python-pip
sudo -H pip install --upgrade pip


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

sudo -H  pip install setuptools
# setting up jedi:
sudo -H  pip install jedi

# setup virtualenv 
sudo -H  pip install virtualenv

# setup virtualenvwrapper
sudo -H  pip install virtualenvwrapper

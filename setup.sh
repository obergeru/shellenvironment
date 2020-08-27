#!/usr/bin/env bash

sudo apt-get install vim python-pip dconf-cli python3-pip python3-setuptools zsh -y
sudo -H pip install --upgrade pip
sudo -H pip3 install --upgrade pip
sudo -H apt-get install git

git config --global user.email "oyvind.bergerud@gjensidige.com"
git config --global user.name "Øyvind Bergerud"



# powerline patch fonts
#wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
#fc-cache -vf ~/.fonts
#mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


# download vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo -H  pip install setuptools
sudo -H  pip3 install setuptools
# setting up jedi:
sudo -H  pip install jedi
sudo -H  pip3 install jedi

# setup virtualenv 
sudo -H  pip install virtualenv
sudo -H  pip3 install virtualenv

# setup virtualenvwrapper
sudo -H  pip install virtualenvwrapper
sudo -H  pip3 install virtualenvwrapper

sudo -H  apt-get install tmux

cp .bashrc ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .vimtmux.conf ~/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

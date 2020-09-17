#!/usr/bin/env bash

sudo apt-get install vim dconf-cli python3-pip python3-setuptools zsh curl -y
sudo -H pip3 install --upgrade pip
sudo -H apt-get install git

git config --global user.email "oyvind.bergerud@gjensidige.com"
git config --global user.name "Øyvind Bergerud"




# download vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo -H  pip3 install setuptools
# setting up jedi:
sudo -H  pip3 install jedi

# setup virtualenv 
sudo -H  pip3 install virtualenv

# setup virtualenvwrapper
sudo -H  pip3 install virtualenvwrapper

sudo -H  apt-get install tmux

cp .bashrc ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .vimtmux.conf ~/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


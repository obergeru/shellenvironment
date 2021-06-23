#!/usr/bin/env bash

sudo apt-get install vim dconf-cli python3-pip python3-setuptools zsh curl nodejs -y
sudo -H pip3 install --upgrade pip
sudo -H apt-get install git -y

git config --global user.email "oyvind.bergerud@gjensidige.no"
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

cp .zshrc ~/
mkdir ~/src


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install



# setup coc for kubernetes
# https://octetz.com/docs/2020/2020-01-06-vim-k8s-yaml-support/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# colorize commands
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

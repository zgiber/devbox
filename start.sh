#!/usr/bin/env bash
sudo apt install -y zip unzip
sudo passwd multipass
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .tmux.conf ~
mkdir ~/.config/nvim
mkdir ~/.tmp
git clone https://github.com/zgiber/nvim.git ~/.config/nvim
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


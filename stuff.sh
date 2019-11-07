#!/usr/bin/env bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .tmux.conf ~
mkdir ~/.config/nvim
mkdir ~/.tmp
git clone https://github.com/zgiber/nvim.git ~/.config/nvim

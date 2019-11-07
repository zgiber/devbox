#!/usr/bin/env bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar -xvf ./nvim-linux64.tar.gz
cd nvim-linux64
sudo cp -R bin/* /usr/bin
sudo cp -R share/* /usr/share
rm -rf ./nvim-linux*

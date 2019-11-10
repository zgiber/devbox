#!/usr/bin/env bash
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.13.4.linux-amd64.tar.gz
rm go1.13.4.linux-amd64.tar.gz*
# this script must run after start.sh as it assumes zsh... TODO: make it work with either
if ! grep -Fxq 'export PATH=$PATH:/usr/local/go/bin' ~/.zshrc; then
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
fi
mkdir -p $HOME/go/bin
if ! grep -Fxq 'export PATH=$PATH:$HOME/go/bin' ~/.zshrc; then 
	echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.zshrc
fi


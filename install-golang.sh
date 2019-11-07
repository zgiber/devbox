#!/usr/bin/env bash
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.13.4.linux-amd64.tar.gz
if ! grep -Fxq 'export PATH=$PATH:/usr/local/go/bin' ~/.profile; then
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
fi
mkdir -p $HOME/go/bin
if ! grep -Fxq 'export PATH=$PATH:$HOME/go/bin' ~/.profile; then 
	echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.profile
fi
rm go1.13.4.linux-amd64.tar.gz*


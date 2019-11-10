#!/usr/bin/env bash
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.10.1/protoc-3.10.1-linux-x86_64.zip
unzip ./protoc-3.10.1-linux-x86_64.zip
mkdir -p ~/dev/proto
cp -r ./bin $HOME/dev/proto
sudo cp -r ./include /usr/local
rm -rf ./bin ./include readme.txt protoc-3.10.1-linux-x86_64.zip

if ! grep -Fxq 'export PATH=$PATH:$HOME/dev/proto/bin' ~/.zshrc; then 
	echo 'export PATH=$PATH:$HOME/dev/proto/bin' >> ~/.zshrc
fi

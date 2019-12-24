#/bin/bash

## Dockerインストールの準備
sudo apt update -y

sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### fingerprintが正しいかのチェック
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

## Dockerのインストール
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io -y


## 現在のユーザーがsudoなしでdockerコマンド実行可能にする
sudo gpasswd -a $USER docker
sudo systemctl restart docker

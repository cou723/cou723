#!/bin/sh
sudo apt-get -y -qq install -y ubuntu-wsl
sudo apt update
sudo apt-get update
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# c lang
sudo apt install -y build-essential
sudo apt install -y clang gdb cmake valgrind clang-format
sudo apt install -y manpages-ja manpages-ja-dev language-pack-ja
sudo apt install -y libreadline-dev
sudo apt-get install -y libtool-bin
sudo apt install -y libtinfo-dev
# utils
sudo apt-get install -y curl fonts-powerline xclip zip unzip zsh athena-jot graphviz doxygen
sudo apt install nkf
cargo install exa
# python
sudo apt install -y python3
sudo apt install -y python3-pip
# ruby
sudo apt-get install -y ruby ruby-bundler ruby-dev build-essential
# web
sudo apt install -y npm
curl -fsSL https://deno.land/x/install/install.sh | sh
curl https://get.volta.sh | bash
# php
sudo apt-get install -y software-properties-common
sudo apt install -y php8.0
# gh
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

git clone https://github.com/scopatz/nanorc.git ~/.nano

curl -sS https://starship.rs/install.sh | sh

# Hackgen NFを表示用フォントにすることを忘れずに

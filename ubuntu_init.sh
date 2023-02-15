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
ln -nfs  /usr/bin/clang++ /etc/alternatives/c++

# utils
sudo apt install -y curl fonts-powerline xclip zip unzip zsh athena-jot graphviz doxygen fish wget
sudo apt install nkf
cargo install exa

# python
apt-get install libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
sudo apt install -y python3
sudo apt install -y python3-pip
curl https://pyenv.run | bash

# ruby
sudo apt-get install -y ruby ruby-bundler ruby-dev build-essential

# web
curl https://get.volta.sh | bash # volta install
volta install node@latest # install node@latest
sudo apt install -y pnpm
curl -fsSL https://deno.land/x/install/install.sh | sh
curl https://get.volta.sh | bash
sudo apt install -y

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

echo "exec fish" >> ~/.bashrc

touch ~/.path-bashrc
PATHFILE=~/.bash_path

#!/bin/sh
sudo apt-get -y -qq install -y ubuntu-wsl & sudo apt update & sudo apt-get update

# rust
yes '' | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# c lang
sudo apt install -y build-essential clang gdb cmake valgrind clang-format manpages-ja manpages-ja-dev language-pack-ja libreadline-dev libtool-bin libtinfo-dev

# utils
sudo apt install -y curl xclip zip unzip fish wget
cargo install exa

# python
apt-get install libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
pyenv install python3.10

# ruby
sudo apt-get install -y ruby ruby-bundler ruby-dev build-essential

# web
## install volta
curl https://get.volta.sh | bash
## install deno
curl https://get.volta.sh | bash
volta install node
volta install pnpm
volta install yarn
volta install npm
sudo apt install -y pnpm & curl -fsSL https://deno.land/x/install/install.sh | sh & curl https://get.volta.sh | bash & sudo apt install -y

# gh
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

git clone https://github.com/scopatz/nanorc.git ~/.nano

yes 'y' | curl -sS https://starship.rs/install.sh | sh

curl https://raw.githubusercontent.com/cou723/cou723/main/configs/.bash_path > ~/.bash_path
curl https://raw.githubusercontent.com/cou723/cou723/main/configs/config.fish > ~/.config/fish/config.fish
curl https://raw.githubusercontent.com/cou723/cou723/main/configs/.vimrc > ~/.vimrc

# Hackgen NFを表示用フォントにすることを忘れずに

echo "if [ -f ~/.bash_path ]; then
    source ~/.path-bashrc
fi" >> ~/.bashrc


echo "exec fish" >> ~/.bashrc

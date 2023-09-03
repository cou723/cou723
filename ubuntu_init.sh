#!/bin/sh
# Hackgen NFを表示用フォントにすることを忘れずに

sudo apt update & sudo apt-get update

# ssh
cp /mnt/c/Users/coura/.ssh/id_rsa ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa

# zsh
sudo apt install zsh -y
curl -fsSL https://git.io/zinit-install | sh
sudo sed --in-place -e '/auth.*required.*pam_shells.so/s/required/sufficient/g' /etc/pam.d/chsh
chsh -s $(which zsh)

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
/home/linuxbrew/.linuxbrew/bin/brew install ghq chezmoi

echo "[edit]" >> ~/.config/chezmoi/chezmoi.toml
echo "    command = "code"" >> ~/.config/chezmoi/chezmoi.toml
echo "    args = ["--wait"]" >> ~/.config/chezmoi/chezmoi.toml

echo yes | /home/linuxbrew/.linuxbrew/bin/chezmoi init git@github.com:cou723/dotfiles.git
/home/linuxbrew/.linuxbrew/bin/chezmoi apply

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# c lang
sudo apt install -y build-essential clang gdb cmake valgrind clang-format manpages-ja manpages-ja-dev language-pack-ja libreadline-dev libtool-bin libtinfo-dev

source ~/.bashrc

# utils
sudo apt install -y curl xclip zip unzip fish wget peco
$HOME/.cargo/bin/cargo install exa bat
curl https://raw.githubusercontent.com/cou723/cou723/main/configs/config.fish > ~/.config/fish/config.fish

# python
sudo apt-get install libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev python3-pip
curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.10

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

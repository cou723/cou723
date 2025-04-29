#!/bin/sh
# Hackgen NFを表示用フォントにすることを忘れずに

sudo apt update
sudo apt install -y build-essential git curl ubuntu-wsl

# zsh
sudo apt install zsh -y
curl -fsSL https://git.io/zinit-install | sh
sudo sed --in-place -e '/auth.*required.*pam_shells.so/s/required/sufficient/g' /etc/pam.d/chsh
chsh -s $(which zsh)

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
/home/linuxbrew/.linuxbrew/bin/brew install ghq chezmoi

chezmoi init cou723
chezmoi apply

# c lang
sudo apt install -y clang gdb cmake valgrind clang-format manpages-ja manpages-ja-dev language-pack-ja libreadline-dev libtool-bin libtinfo-dev

source ~/.bashrc

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
## wry
sudo apt install libpango1.0-dev pkg-config
sudo apt-get install libgtk-3-dev
sudo apt-get install libsoup-3.0-0
sudo apt-get install libjavascriptcoregtk-4.1-dev

# utils
sudo apt install -y curl xclip zip unzip wget fzf
$HOME/.cargo/bin/cargo install exa bat

# gh
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# chezmoi
mkdir -p ~/.config/chezmoi
echo "[edit]" >> ~/.config/chezmoi/chezmoi.toml
echo '    command = "code"' >> ~/.config/chezmoi/chezmoi.toml
echo '    args = ["--wait"]' >> ~/.config/chezmoi/chezmoi.toml

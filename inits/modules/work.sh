#!/bin/sh
# Hackgen NFを表示用フォントにすることを忘れずに

# rust
sudo dnf install -y gcc
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# utils
sudo dnf install -y curl zip unzip wget git util-linux-user
sudo dnf provides '*/chsh' -y
$HOME/.cargo/bin/cargo install exa bat

# zsh
sudo dnf install zsh -y
curl -fsSL https://git.io/zinit-install | sh
chsh -s $(which zsh)

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
/home/linuxbrew/.linuxbrew/bin/brew install ghq chezmoi brew

chezmoi init cou723
chezmoi apply

# chezmoi
mkdir -p ~/.config/chezmoi
echo "[edit]" >> ~/.config/chezmoi/chezmoi.toml
echo '    command = "code"' >> ~/.config/chezmoi/chezmoi.toml
echo '    args = ["--wait"]' >> ~/.config/chezmoi/chezmoi.toml

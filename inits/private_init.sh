#!/bin/sh
set -e

# Nix のインストール
if ! command -v nix > /dev/null 2>&1; then
  curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
  . ~/.nix-profile/etc/profile.d/nix.sh
fi

# インストール直後に PATH が通っていない場合のフォールバック
. /etc/profile.d/nix.sh 2>/dev/null || true
. ~/.nix-profile/etc/profile.d/nix.sh 2>/dev/null || true

# Nix flakes を有効化
mkdir -p ~/.config/nix
grep -q "experimental-features" ~/.config/nix/nix.conf 2>/dev/null || \
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

# nix profile で入れた nixpkgs 由来のパッケージを削除 (home-manager と競合するため)
nix profile list 2>/dev/null \
  | sed 's/\x1b\[[0-9;]*m//g' \
  | awk '/^Name:/{name=$2} /legacyPackages/{print name}' \
  | xargs -r nix profile remove 2>/dev/null || true

# home-manager でパッケージ一括インストール
nix run home-manager/master -- switch --flake github:cou723/cou723#coura

# WSL: SSH鍵のコピー (Windows -> WSL)
curl -fsSL https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/copy-sshkey.sh | sh

# git 設定
git config --global push.default current
git config --global --add --bool push.autoSetupRemote true
git config --global user.email "courange.c@gmail.com"
git config --global user.name "cou723"

# chezmoi で dotfiles を適用
chezmoi init cou723
chezmoi apply

# zsh をデフォルトシェルに設定
sudo sed -i -e '/auth.*required.*pam_shells.so/s/required/sufficient/g' /etc/pam.d/chsh
chsh -s "$(which zsh)"

# WSLg: 日本語フォント設定 + 追加パッケージ
curl -fsSL https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/wslg | sh

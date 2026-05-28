#!/bin/sh
# WSL Ubuntu 初期セットアップ (Nix ベース) - ローカル実行用
# 前提: このリポジトリをクローン済み、Nix がインストール済み
# Nix インストール: curl -L https://nixos.org/nix/install | sh -s -- --no-daemon

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

# Nix flakes を有効化
mkdir -p ~/.config/nix
grep -q "experimental-features" ~/.config/nix/nix.conf 2>/dev/null || \
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

# インストール直後に PATH が通っていない場合のフォールバック
. /etc/profile.d/nix.sh 2>/dev/null || true

# home-manager でパッケージ一括インストール (ローカルの flake.nix を使用)
nix run home-manager/master -- switch --flake "${REPO_DIR}#coura"

# git 設定
git config --global push.default current
git config --global --add --bool push.autoSetupRemote true
git config --global user.email "courange.c@gmail.com"
git config --global user.name "cou723"

# chezmoi で dotfiles を適用
chezmoi init cou723
chezmoi apply

# WSL: SSH鍵のコピー (Windows -> WSL)
sh "${REPO_DIR}/inits/modules/copy-sshkey.sh"

# zsh をデフォルトシェルに設定
sudo sed -i -e '/auth.*required.*pam_shells.so/s/required/sufficient/g' /etc/pam.d/chsh
chsh -s "$(which zsh)"

# WSLg: 日本語フォント設定 + 追加パッケージ
sh "${REPO_DIR}/inits/modules/wslg"

echo "セットアップ完了! Hackgen NF フォントを Windows にインストールしてください。"

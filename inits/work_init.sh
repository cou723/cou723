#!/bin/sh
# 仕事用初期セットアップ (Nix ベース)
# 前提: Nix がインストール済み
# Nix インストール: curl -L https://nixos.org/nix/install | sh -s -- --no-daemon

set -e

mkdir -p ~/.config/nix
grep -q "experimental-features" ~/.config/nix/nix.conf 2>/dev/null || \
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

. /etc/profile.d/nix.sh 2>/dev/null || true

nix run home-manager/master -- switch --flake github:cou723/cou723#coura

git config --global push.default current
git config --global --add --bool push.autoSetupRemote true

chezmoi init cou723
chezmoi apply

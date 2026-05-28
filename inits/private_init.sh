#!/bin/sh
set -e

echo "[1/6] Nix のインストール確認..."
if ! command -v nix > /dev/null 2>&1; then
  echo "  -> Nix をインストール中..."
  curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
  . ~/.nix-profile/etc/profile.d/nix.sh 2>/dev/null || true
else
  echo "  -> インストール済み: $(nix --version)"
fi

[ -f /etc/profile.d/nix.sh ] && . /etc/profile.d/nix.sh || true
[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && . ~/.nix-profile/etc/profile.d/nix.sh || true

if ! command -v nix > /dev/null 2>&1; then
  echo "ERROR: nix コマンドが見つかりません。シェルを再起動して再実行してください。"
  exit 1
fi

echo "[2/6] Nix flakes を有効化..."
mkdir -p ~/.config/nix
grep -q "experimental-features" ~/.config/nix/nix.conf 2>/dev/null || \
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

echo "[3/6] nix profile の nixpkgs 由来パッケージを削除 (home-manager との競合解消)..."
nix profile list 2>/dev/null \
  | sed 's/\x1b\[[0-9;]*m//g' \
  | awk '/^Name:/{name=$2} /legacyPackages/{print name}' \
  | xargs -r nix profile remove 2>/dev/null || true

echo "[4/6] home-manager でパッケージを一括インストール中 (初回は数分かかります)..."
nix run home-manager/master -- switch --flake github:cou723/cou723#coura

echo "[5/6] WSL・git の設定..."
git config --global push.default current
git config --global --add --bool push.autoSetupRemote true
git config --global user.email "courange.c@gmail.com"
git config --global user.name "cou723"

chezmoi init cou723
chezmoi apply

ZSH_PATH="$(which zsh)"
grep -qF "$ZSH_PATH" /etc/shells || echo "$ZSH_PATH" | sudo tee -a /etc/shells
chsh -s "$ZSH_PATH"

echo "[6/6] WSLg: 日本語フォント設定..."
curl -fsSL https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/wslg | sh

echo ""
echo "セットアップ完了! Hackgen NF フォントを Windows にインストールしてください。"
echo "新しいターミナルを開くと設定が反映されます。"

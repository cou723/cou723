{ pkgs, ... }:

{
  home.username = "coura";
  home.homeDirectory = "/home/coura";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    # ユーティリティ
    curl
    wget
    xclip
    zip
    unzip
    fzf
    eza
    socat
    zsh

    # 開発ツール
    gh
    ghq
    chezmoi

    # C/C++
    clang-tools
    gdb
    cmake
    valgrind
    pkg-config
    readline
    libtool

    # Rust
    rustup

    # Python
    uv

    # JavaScript
    nodejs_24
    pnpm
    bun

    # ビルドツール
    gcc
    gnumake
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.enableNixpkgsReleaseCheck = false;

  programs.home-manager.enable = true;
}

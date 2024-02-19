#!/bin/sh

# ruby
sudo apt-get install -y ruby ruby-bundler ruby-dev build-essential

# web
## install volta
curl https://get.volta.sh | bash
~/.volta/bin/volta install node
~/.volta/bin/volta install yarn
~/.volta/bin/volta install npm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# tauri
sudo apt install -y libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    file \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev

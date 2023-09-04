#!/bin/sh

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
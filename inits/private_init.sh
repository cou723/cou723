#!/bin/sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/core.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/copy-sshkey.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/python.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/web.sh | sh

git config --global push.default current
git config --global --add --bool push.autoSetupRemote true
git config --global user.email "courange.c@gmail.com"
git config --global user.name "cou723"

sudo apt install socat

# WSLg用日本語化
cat << 'EOS' | sudo tee /etc/fonts/local.conf
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <dir>/mnt/c/Windows/Fonts</dir>
</fontconfig>
<!-- Created by bash script from https://astherier.com/blog/2021/07/windows11-wsl2-wslg-japanese/ -->
EOS

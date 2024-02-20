#!/bin/sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/core.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/copy-sshkey.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/python.sh | sh
curl https://raw.githubusercontent.com/cou723/cou723/main/inits/modules/web.sh | sh

git config --global push.default current
git config --global --add --bool push.autoSetupRemote true
git config --global user.email "courange.c@gmail.com"
git config --global user.name "cou723"

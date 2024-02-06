#!/bin/sh
sudo apt-get install libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev python3-pip
curl https://pyenv.run | bash
$HOME/.pyenv/bin/pyenv install 3.10

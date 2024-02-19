#!/bin/sh
sudo apt install -y build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev libopencv-dev tk-dev git
git clone git://github.com/pyenv/pyenv.git ~/.pyenv
pyenv install 3.11.4
pip3 install numpy matplotlib pandas 

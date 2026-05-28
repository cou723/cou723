#!/bin/sh
mkdir -p ~/.ssh
cp /mnt/c/Users/coura/.ssh/id_ed25519 ~/.ssh/
cp /mnt/c/Users/coura/.ssh/id_ed25519.pub ~/.ssh/
sudo chmod 600 ~/.ssh/id_ed25519

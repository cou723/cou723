#!/bin/sh
sudo apt-get -y -qq install -y ubuntu-wsl
sudo apt install -y clang
sudo apt install -y gcc
sudo apt-get install -y manpages-ja
sudo apt install -y manpages-ja manpages-ja-dev
sudo apt -y install -y language-pack-ja
sudo apt install -y make
sudo apt-get install -y 
sudo apt install -y build-essential
sudo apt install -y gdb
sudo apt install -y cmake
sudo apt install -y zip
sudo apt-get install -y valgrind
sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo apt install -y gdb
sudo apt install -y clang-format
sudo apt install -y python3-pip
sudo apt-get install -y ruby ruby-bundler ruby-dev build-essential
sudo apt install -y nkf
sudo apt-get install -y ./exa_0.9.0-4_amd64.deb
sudo apt-get install -y fonts-powerline
sudo apt install -y npm
sudo apt-get install -y curl
sudo apt install -y python3
sudo apt-get install -y athena-jot
sudo apt-get install -y libtool-bin
sudo apt install -y clang-format
sudo apt install -y libtinfo-dev
sudo apt install -y libreadline-dev
sudo apt-get install -y graphviz
sudo apt install -y php
sudo apt-get install -y software-properties-common
sudo apt install -y php8.0
sudo apt-get install -y zsh
sudo apt-get install -y unzip wget gcc-avr binutils-avr avr-libc dfu-programmer dfu-util gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi
sudo apt install -y git python3-pip
sudo apt-get install -y build-essential clang-format diffutils python3-pip binutils-avr gcc-avr avr-libc  gcc-arm-none-eabi libnewlib-arm-none-eabi avrdude dfu-programmer dfu-util teensy-loader-cli libhidapi-hidraw0 libusb-dev
sudo apt-get install -y doxygen
sudo apt install -y xclip
curl -sS https://starship.rs/install.sh | sh

echo "eval \"$(starship init zsh)\"" >> ~/.zshrc

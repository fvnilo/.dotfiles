#!/usr/bin/env bash

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing packages with brew"
bash ./brew.sh

echo "Installing configuration files"
bash ./install.sh

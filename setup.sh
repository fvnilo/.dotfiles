#!/usr/bin/env bash

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

bash ./brew.sh
bash ./install.sh

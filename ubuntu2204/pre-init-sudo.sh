#!/bin/bash

## NOTE: RUN WITH SUDO.

# Install ZSH.
apt-get update && apt-get install -y curl git zsh

# Install OMZ.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change shell on next login. 
# RUN THIS WITHOUT SUDO!
chsh -s $(which zsh)

zsh
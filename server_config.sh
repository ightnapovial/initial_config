#! /bin/bash

# Tasks:
# apt update and upgraydd
# Copy dotfiles
# Install micro, python3-pip, 
# Set zsh as shell and install ohmyzsh + install syntax highlighting

# Apt update/upgraydd
apt update

apt upgrade -y

apt auto-remove

# Install extras

apt -q -y install python3-pip \
    tmux \
    zsh \
    curl \
    git \
    zsh-syntax-highlighting

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy dotfiles 

#cp dotfiles/* /home/$USER

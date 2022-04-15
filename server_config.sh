#! /bin/bash

# Tasks:
# apt update and upgraydd
# Copy dotfiles
# Install micro, python3-pip, 
# Set zsh as shell and install ohmyzsh + install syntax highlighting

# Apt update/upgraydd
sudo apt update

sudo apt upgrade -y

sudo apt auto-remove

# Install extras

sudo apt -q -y install python3-pip \
    tmux \
    zsh \
    curl \
    git \
    zsh-syntax-highlighting \
    locate \
    micro

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy dotfiles 

dfiles=".zshrc"

for file in $dfiles; do
	echo "Copying $file"
	cp dotfiles/$file ~/
done

#cp dotfiles/* /home/$USER/

# switch to zsh

chsh -s /usr/bin/zsh

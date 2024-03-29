#! /bin/bash

# Tasks:
# copy and install powerlevel fonts
# Copy sway config
# Install pipewire and associated items, copy sway config
# Set zsh as shell and install ohmyzsh + install syntax highlighting

# Apt update/upgraydd
sudo apt update

sudo apt upgrade -y

sudo apt auto-remove -y

# Install extras

sudo apt -q -y install python3-pip \
    tmux \
    zsh \
    curl \
    zsh-syntax-highlighting \
    locate \
    micro \
    net-tools \
    cifs-utils \
    glances \
    sway \
    pipewire-pulse \
    wireplumber \
    waybar \
    network-manager-gnome \
    cool-retro-term \
    nmap \
    ranger
    

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy dotfiles

dfiles=".zshrc"

for file in $dfiles; do
	echo "Copying $file"
	cp dotfiles/$file ~/
done

# Copy sway config and backlight script

mkdir ~/.config/sway && cp config/sway/config ~/.config/sway/

cp config/sway/config/backlight.sh ~/.config/sway/

# switch to zsh

chsh -s /usr/bin/zsh

# add powerlevel fonts

mkdir ~/.fonts && cp font/* ~/.fonts

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

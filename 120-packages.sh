#!/bin/bash

# Define packages to install
packages=(
    kitty
    firefox
    #microsoft-edge-beta-bin
    zathura
    ranger
    visual-studio-code-bin
    gimp
    brave-browser
    inkscape
    obsidian
    homebank
    #portfolio-performance-bin
    #chatgpt
    #anki-bin
    #zotero-bin
    flameshot
    keepassxc
    meld
    nextcloud-client
    vlc
    sublime-text
    qalculate-gtk
    musescore
    #latex-ocr
    ttf-cascadia-code
    ttf-cascadia-code-nerd
    discord
    #normcap
    ttf-apple-emoji
    #nerd-dictation-git
    peek
    freecad
    librecad
    libreoffice-still
    blender
    thunderbird
    spotify
    arduino
)
# commented packages are not in the default repos, but in AUR

# Update package repositories
sudo pacman -Sy

# Install packages
for package in "${packages[@]}"; do
    if ! pacman -Qs "$package" >/dev/null; then
        sudo pacman -S --noconfirm "$package"
    else
        echo "$package is already installed. Skipping..."
    fi
done

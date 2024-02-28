#!/bin/bash

# Define packages to install
packages=(
    kitty
    firefox
    microsoft-edge-beta
    zathura
    ranger-fm
    notepadqq
    gimp
    brave-browser
    inkscape
    vscode
    obsidian
    homebank
    portfolio-performance
    chatgpt
    anki
    zotero
    flameshot
    keepassxc
    meld
    nextcloud-client
    vlc-player
    sublime-text
    qalculate
    musescore
    f.lux
    latex-ocr
    Cascadia Code
    CaskaydiaCove
    Discord
    NormCap
    Apple Emoji
    NerdDictation
    peek
    freecad
    librecad
    libreoffice-still
    blender
    thunderbird
    spotify
)


# Update package repositories
sudo pacman -Sy

# Install packages
for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

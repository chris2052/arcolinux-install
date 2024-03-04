#!/bin/bash

# Define packages to install
packages=(
    microsoft-edge-beta-bin
    portfolio-performance-bin
    #chatgpt
    anki-bin
    zotero-bin
    vlc
    #latex-ocr (not as package available)
    normcap
    #nerd-dictation-git
	appflowy-bin
)

# Update package repositories
yay -Sy

# Install packages
for package in "${packages[@]}"; do
    if ! yay -Qs "$package" >/dev/null; then
        yay -S --noconfirm "$package"
    else
        echo "$package is already installed. Skipping..."
    fi
done

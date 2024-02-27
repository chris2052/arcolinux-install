#!/bin/bash

# Define packages to install
packages=(
    kitty
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
  	nextcloud
  	vlc-player
  	sublime-text
  	qalculate
  	MuseScore
  	f.lux
  	latex-ocr
  	Cascadia Code (Font)
  	CaskaydiaCove (Nerd Font)
  	Discord
  	NormCap
  	Apple Emoji
  	NerdDictation
)


# Update package repositories
sudo pacman -Sy

# Install packages
for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

#!/bin/sh

# Main programs I use on every desktop

echo "Install script has changed, would you like to update and install [y/n]"
read -r response

if [ "$response" != "y" ]; then
    echo "Installation cancelled."
    exit 1
fi

# Official repo
yay -S --needed --noconfirm \
    firefox \
    fish \
    fisher \
    gimp \
    handbrake \
    obs-studio \
    signal-desktop \
    steam \
    timeshift \
    torbrowser-launcher \
    wine \
    zellij

# AUR packages, do not bypass with noconfirm
yay -S --needed \
    github-desktop-bin \
    qdirstat-bin \
    ungoogled-chromium-bin \
    vesktop-bin \
    visutal-studio-code-bin

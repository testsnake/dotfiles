#!/bin/sh

# Main programs I use on every desktop

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

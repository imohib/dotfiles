#!/bin/bash
set -euo pipefail

APT_PACKAGES="\
    apt-transport-https \
    apt-file \
    awscli \
    build-essential \
    dropbox \
    curl \
    git \
    google-chrome-stable \
    gnome-tweaks \
    gparted \
    htop \
    jq \
    keepassx \
    libgeoip-dev \
    lynx \
    meld \
    openvpn \
    postgresql-contrib \
    postgresql \
    powertop \
    python-dev \
    python-gpg \
    python-pip \
    python3-pip \
    python3-dev \
    redis-server \
    rename \
    ruby \
    silversearcher-ag \
    shellcheck \
    sublime-text \
    tmux \
    tlp \
    vim \
    vlc \
    xclip \
    yarn \
    zsh \
"

echo "--- Updating apt sources"
sudo apt update --quiet | awk '{print "--- --- " $0}'
echo "--- OK"
echo "--- Installing apt packages"
echo "$APT_PACKAGES" | tr " " "\n" | awk '{print "--- --- " $0}'
sudo apt install -y $APT_PACKAGES --quiet
echo "--- OK"

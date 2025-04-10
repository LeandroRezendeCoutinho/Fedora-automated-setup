#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

bash scripts/dnf/build-essentials-install.sh
bash scripts/dnf/chrome-install.sh
bash scripts/dnf/docker-install.sh
bash scripts/dnf/fish-shell-install.sh
bash scripts/dnf/gnome-tweaks-install.sh
bash scripts/dnf/htop-install.sh
bash scripts/dnf/microsoft-edge-install.sh
bash scripts/dnf/mise-install.sh
bash scripts/dnf/opera-install.sh
bash scripts/dnf/qbittorrent-install.sh
bash scripts/dnf/ruby-dependencies-install.sh
bash scripts/dnf/sublime-text-install.sh
bash scripts/dnf/tig-install.sh
bash scripts/dnf/tmux-install.sh
bash scripts/dnf/visual-studio-code-install.sh
bash scripts/dnf/xclip-install.sh

# optional
# bash scripts/dnf/erlang-dependencies-install.sh
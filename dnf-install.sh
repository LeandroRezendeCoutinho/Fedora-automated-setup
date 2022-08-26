#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

bash script/dnf/build-essentials-install.sh
bash script/dnf/chrome-install.sh
bash script/dnf/docker-install.sh
bash script/dnf/fish-shell-install.sh
bash script/dnf/htop-install.sh
bash script/dnf/qbittorrent-install.sh
bash script/dnf/tig-install.sh
bash script/dnf/tmux-install.sh
bash script/dnf/sublime-text-install.sh
bash script/dnf/visual-studio-code-install.sh
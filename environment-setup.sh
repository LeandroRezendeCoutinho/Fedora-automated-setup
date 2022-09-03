echo "Starting batch setup"

bash scripts/setup/asdf-setup.sh
bash scripts/setup/docker-setup.sh
bash scripts/setup/flatpak-setup.sh
bash scripts/setup/git-setup.sh
bash scripts/setup/swappiness-setup.sh
bash scripts/setup/tmux-setup.sh
bash scripts/setup/fish-setup.sh

# gogh theme > https://github.com/Gogh-Co/Gogh
export TERMINAL=gnome-terminal

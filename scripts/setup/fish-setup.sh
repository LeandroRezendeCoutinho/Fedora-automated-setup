#!bin/bash

echo "Starting FISH setup"

# tmux
echo 'if status is-interactive' >> ~/.config/fish/config.fish
echo 'and not set -q TMUX' >> ~/.config/fish/config.fish
echo '  exec tmux' >> ~/.config/fish/config.fish
echo 'end' >> ~/.config/fish/config.fish

# theme
echo 'starship init fish | source' >> ~/.config/fish/config.fish

# mise
echo '~/.local/bin/mise activate fish | source' >> ~/.config/fish/config.fish

chsh -s /usr/bin/fish

# Oh My Fish - The Fish Shell Framework
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Ficher - plugin manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Themes
curl -sS https://starship.rs/install.sh | sh

echo 'Restart session after fish setup'
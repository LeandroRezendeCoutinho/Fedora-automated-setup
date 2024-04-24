#!bin/bash

echo "Starting FISH setup"

# config file
echo 'source ~/.asdf/asdf.fish' > ~/.config/fish/config.fish
echo 'if status is-interactive' >> ~/.config/fish/config.fish
echo 'and not set -q TMUX' >> ~/.config/fish/config.fish
echo '  exec tmux' >> ~/.config/fish/config.fish
echo 'end' >> ~/.config/fish/config.fish
echo 'starship init fish | source' >> '~/.config/fish/config.fish'

chsh -s /usr/bin/fish

# asdf fish integration
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Oh My Fish - The Fish Shell Framework
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Ficher - plugin manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Themes
curl -sS https://starship.rs/install.sh | sh

echo 'Restart session after fish setup'
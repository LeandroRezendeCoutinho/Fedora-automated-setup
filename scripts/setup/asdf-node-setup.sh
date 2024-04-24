#!bin/bash

echo "Starting nodejs setup"

asdf plugin add nodejs

asdf install nodejs 20.12.2

asdf global nodejs 20.12.2

npm install --global yarn
#!bin/bash

echo "Starting nodejs setup"

asdf plugin add nodejs

asdf install nodejs 20.10.0

asdf global nodejs 20.10.0

npm install --global yarn
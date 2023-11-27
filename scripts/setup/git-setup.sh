#!bin/bash

echo "Git configuration section"

echo "Enter with your git email"
read email

echo "Enter with your git user name"
read user

git config --global user.email $email
git config --global user.name $user

echo "Generating SSH key to github"
ssh-keygen -t ed25519 -C $email
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "SSH key copied to clipboard"
xclip -sel clip < ~/.ssh/id_ed25519.pub

echo "On github click your profile photo, then click Settings."
echo "In the user settings sidebar, click SSH and GPG keys"
echo "Click New SSH key or Add SSH key"

echo "add ssh key to agent"
eval ssh-agent -s
ssh-add ~/.ssh/id_ed25519.pub
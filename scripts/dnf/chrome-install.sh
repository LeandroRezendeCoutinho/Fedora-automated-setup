#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

dnf install fedora-workstation-repositories

dnf config-manager --set-enabled google-chrome

dnf install google-chrome-stable -y
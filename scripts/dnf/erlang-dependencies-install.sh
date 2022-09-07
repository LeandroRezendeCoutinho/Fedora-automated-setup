#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

dnf install inotify-tools ncurses-devel wxGTK3-devel -y
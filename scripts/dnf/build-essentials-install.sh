#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

dnf group install "C Development Tools and Libraries" "Development Tools" -y

dnf install cmake -y
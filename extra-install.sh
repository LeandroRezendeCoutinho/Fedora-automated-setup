#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

bash scripts/extra/multimedia-install.sh
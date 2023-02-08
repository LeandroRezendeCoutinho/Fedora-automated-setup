#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

rpm --import https://packages.microsoft.com/keys/microsoft.asc

dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge 

mv /etc/yum.repos.d/packages.microsoft.com_yumrepos_edge.repo /etc/yum.repos.d/microsoft-edge.repo

dnf install microsoft-edge-stable -y
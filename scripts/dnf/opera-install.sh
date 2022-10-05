#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

dnf config-manager --add-repo https://rpm.opera.com/rpm
rpm --import https://rpm.opera.com/rpmrepo.key

dnf install opera-stable -y
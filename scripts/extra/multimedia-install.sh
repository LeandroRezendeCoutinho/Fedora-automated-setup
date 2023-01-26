#!bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

dnf install lame\* --exclude=lame-devel -y

dnf group upgrade --with-optional Multimedia -y
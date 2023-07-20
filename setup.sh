#!/bin/sh

if grep -Fq "ubuntu" /etc/os-release
then
    echo "Detected Ubuntu or Ubuntu derivative"
    . ./ubuntu/setup.sh
    generic
else
    echo "Unsupported Distro :("
    exit
fi


. ./generic/setup.sh

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER


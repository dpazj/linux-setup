#!/bin/sh

if grep -Fq "ubuntu" /etc/os-release
then
    echo "Detected Ubuntu or Ubuntu derivative"
    source ./ubuntu/setup.sh
    generic
else
    echo "Unsupported Distro :("
    exit
fi


source ./generic/setup.sh

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER


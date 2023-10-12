#!/bin/sh

if grep -Fq "ubuntu" /etc/os-release; then
    echo "Got Ubuntu"
    . ./ubuntu/setup.sh
else
    echo "Unsupported Distro :("
    exit
fi

. ./generic/setup.sh
. ./desktop_environment/setup.sh

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER

echo "Fin."

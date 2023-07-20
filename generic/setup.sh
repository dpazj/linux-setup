#!/bin/sh

#tmux
mv ~/tmux.conf ~/tmux.conf_old
cp ./config/tmux.conf ~/tmux.conf
rm ~/.tmux.conf_old

#zsh
. ./generic/zsh.sh


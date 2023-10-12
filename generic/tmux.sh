#!/bin/sh

mv ~/.tmux.conf ~/.tmux.conf_old
cp ./configs/.tmux.conf ~/.tmux.conf
rm ~/.tmux.conf_old

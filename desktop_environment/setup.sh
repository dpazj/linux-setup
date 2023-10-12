#!/bin/sh

DE=$(echo "$XDG_DATA_DIRS" | grep -Eo 'xfce|kde|gnome')

if [ "${DE}" = "gnome" ]; then
    . ./desktop_environment/gnome.sh
fi

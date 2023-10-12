#!/bin/sh

# Smaller headers 

gtkcss=~/.config/gtk-3.0/gtk.css
if [ -f $gtkcss ];then
    mv $gtkcss "${gtkcss}.old"
fi

css="@import 'colors.css';

headerbar entry, 
headerbar spinbutton,
headerbar button,
headerbar separator {
    margin-top: 0px; /* same as headerbar side padding for nicer proportions */
    margin-bottom: 0px;
}

headerbar {
    min-height: 24px;
    padding-left: 2px; /* same as childrens vertical margins for nicer proportions */
    padding-right: 2px;
    margin: 0px; /* same as headerbar side padding for nicer proportions */
    padding: 0px;
}" 

echo "$css" > $gtkcss 

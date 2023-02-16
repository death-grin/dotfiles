#!/bin/bash

directories=(bspwm kitty picom polybar sxhkd)

function enable_touchpad
{
    sudo ln -s /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf
    sudo cp config/30-touchpad.conf /etc/X11/xorg.conf.d/.
}

function copy_config
{
    for directory in ${directories[@]}; do
        cp -r config/$directory ~/.config/.
        echo "$directory has been copied to ~/.config/$direcotry"
    done
}

function rename_old_config
{
    for directory in ${directories[@]}; do
        mv ~/.config/$directory ~/.config/$directory-old
        echo "$directory has been renamed to $directory-old"
    done
}

echo "Coming soon..."
copy_config
rename_old_config
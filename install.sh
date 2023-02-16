#!/bin/bash

function enable_touchpad
{
    sudo ln -s /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf
    sudo cp config/30-touchpad.conf /etc/X11/xorg.conf.d/.
}

echo "Coming soon..."
#!/bin/bash

blue="\e[0;34m\033[1m"
purple="\e[0;35m\033[1m"
cyan="\e[0;36m\033[1m"
reset="\033[0m\e[0m"

directories=(bspwm kitty picom polybar sxhkd)

function enable_touchpad
{
    echo -e "$blueROOT$reset is required to enable the $purpletouchpad$reset"
    sudo ln -s /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf
    sudo cp config/30-touchpad.conf /etc/X11/xorg.conf.d/.
}

function copy_config
{
    for directory in ${directories[@]}; do
        cp -r config/$directory ~/.config/.
        echo -e "[*] $blue$directory$reset has been copied to $purple~/.config/$directory$reset"
    done
}

function rename_old_config
{
    for directory in ${directories[@]}; do
        mv ~/.config/$directory ~/.config/$directory-old 2>/dev/null
        if [[ $(echo $?) -eq 0 ]]; then
            echo -e "[*] $blue$directory$reset has been renamed to $purple$directory-old$reset"
        fi
    done
}

clear
echo "Dotfiles Installation"
echo "Author: Death Grin"
echo "Repository: https://github.com/death-grin/dotfiles"
echo "---"
rename_old_config
echo "---"
copy_config
echo "---"
enable_touchpad
echo ""
echo "Now $bluerestart$reset the session and log in with $purpleBSPWM$reset"
#!/bin/bash

percent=$(acpi | awk '{print $4}' | tr -d ,)
status=$(acpi | awk '{print $3}' | tr -d ,)

if [[ "$status" != "Discharging" ]]; then
    echo "[ 󱟠 $percent ]" #󱟡
else
    echo "[ 󱟟 $percent ]"
fi
#!/bin/bash

interface="tun0"

ip_address=$(ip address | grep $interface | tail -n 1 | awk '{print $2}' | awk '{print $1}' FS=/ | xargs)

if [[ -z $ip_address ]]; then
    echo "[  VPN  ]"
else
    echo "[  $ip_address  ]"
fi
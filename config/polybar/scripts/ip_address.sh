#!/bin/bash

interface="wlp0s20f3"
ip_address=$(ip address | grep $interface | tail -n 1 | awk '{print $2}' | awk '{print $1}' FS=/ | xargs)

echo "[  $ip_address  ]"
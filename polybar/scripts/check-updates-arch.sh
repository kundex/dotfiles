#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if [ "$updates_arch" -gt 0 ]; then
    echo " $updates_arch"
else
    echo "0"
fi

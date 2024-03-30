#!/bin/sh

for args; do
    if [ -e "$args" ]; then
        if [ -d "$args" ]; then
            echo "$args: directory"
        else
            echo "$args: file"
        fi
    else
        echo "$args: unknown"
    fi
done

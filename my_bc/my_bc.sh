#!/bin/sh

if [ $# -lt 1 ]; then
    while IFS= read -r line; do
        echo $(($line))
    done
else
    echo $(($1))
    exit 0
fi

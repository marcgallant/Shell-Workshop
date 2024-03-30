#!/bin/sh

ext=txt

if [ $# -ge 1 ]; then
    ext=$1
fi

for i in *.$ext; do
    if [ -e $i ]; then
        rm $i
    else
        exit 1
    fi
done

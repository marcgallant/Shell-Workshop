#!/bin/sh

[ $# -ne 1 ] && exit 1 ||
{
    if [ -f "$1" ]; then
        while IFS='' read -r line; do
            N=$(echo "$line" | wc --chars)
            if [ $N -gt 80 ]; then
                printf "%s\n" "$line"
            fi
        done < "$1"
        exit 0
    else
        exit 1
    fi
}

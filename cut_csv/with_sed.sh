#!/bin/sh

[ $# -ne 2 ] && exit 1 ||
{
    if [ -f "$1" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
        N=$(wc -l < "$1")
        if [ "$2" -le "$N" ] && [ "$2" -gt 0 ]; then
            sed -n $2,$2p "$1" | sed -rn 's/^[^;]*;([^;]*);([^;]*).*$/\1 is \2/p'
            exit 0
        fi
    fi
    exit 1
}

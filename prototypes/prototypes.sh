#!/bin/sh

[ $# -ne 1 ] && exit 1 ||
{
    sed -rn "s/^[a-z]+ [a-zA-Z0-9*_ ]+\(.*\);?$/&;/p" "$1"
    exit 0
}

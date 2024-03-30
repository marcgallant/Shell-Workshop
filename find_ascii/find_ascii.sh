#!/bin/sh

[ $# -ne 1 ] && exit 1 ||
{
    ls -a "$1" | while read file; do
        file "$1/$file" | grep -E ".*ASCII.*"
    done
    exit 0
}

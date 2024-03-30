#!/bin/sh

facto() {
    res=1
    i=$1
    while [ $i -ne 0 ]; do
        res=$((res*i))
        i=$((i-1))
    done

    echo $res
}

if [ $# -eq 1 ]; then
    facto $1
    exit 0
else
    exit 1
fi

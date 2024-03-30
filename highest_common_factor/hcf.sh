#!/bin/sh

if [ $# -ne 2 ]; then
    echo Usage: ./hcf.sh num1 num2
    exit 1
else
    if [ $2 -eq 0 ]; then
        echo "Exception: division by 0"
        exit 2 
    else
        a=$1
        b=$2
        r=$((a%b))
        while [ $r -ne 0 ]; do
            a=$b
            b=$r
            r=$((a%b))
        done
        echo $b
    fi
fi

#!/bin/sh

[ $# -ne 1 ] && exit 1 ||
    {
        res=1
        i=$1
        while [ $i -ne 0 ]; do
            res=$((res*i))
            i=$((i-1))
        done

        echo $res
    }

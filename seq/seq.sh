#!/bin/sh

i=1

[ $# -ne 3 ] && (>&2 echo "Usage: ./seq.sh FIRST INCREMENT LAST") && exit 1 ||
{
    [ $2 -eq 0 ] && exit 1 ||
    {
        if [ $1 -eq $3 ]; then
            echo $1
        else
            if [ $1 -lt $3 ]; then
                if [ $2 -gt 0 ]; then

                    while [ $(($1 * $i)) -le $3 ]; do
                        echo $(($1 * $i))
                        i=$i+$2
                    done
                else
                    exit 1
                fi
            else
                if [ $2 -lt 0 ]; then
                    while [ $(($1 * $i)) -ge $3 ]; do
                        echo $(($1 * $i))
                        i=$i+$2
                    done
                else
                    exit 1
                fi
            fi
        fi
        exit 0
    }
}

#!/bin/sh

FILENAME=default
NUMBER=1
EXTENSION=txt

tmp=0
for args; do
    case $tmp in
        0)
            case $args in
                -f | --filename)
                    tmp=1
                    ;;
                -n | --number)
                    tmp=2
                    ;;
                -e | --extension)
                    tmp=3
                    ;;
                *)
                    exit 1
                    ;;
            esac
            ;;
        1)
            FILENAME=$args
            tmp=0
            ;;
        2)
            NUMBER=$args
            tmp=0
            ;;
        3)
            EXTENSION=$args
            tmp=0
            ;;
    esac
done

for i in $(seq $NUMBER); do
    touch -- "$FILENAME-$i.$EXTENSION"
done

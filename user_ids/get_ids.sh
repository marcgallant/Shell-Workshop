#!/bin/sh

cut -d ':' -f3 "/etc/passwd" | sort -gur
exit 0

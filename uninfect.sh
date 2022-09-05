#!/bin/bash
FILES=$(find ~ -type d \( -path /Library/ \) -prune -o -type f -iname makefile 2>/dev/null)
IFS=$(echo -en "\n\b")
for f in $FILES
do
    grep -v "infect" $f > temp; mv temp $f
done

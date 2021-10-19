#!/bin/bash

SCRIPT_PATH="/perform-measurement.sh"

if [ $# -ne 2 ]; then
    echo “$0 Requires 2 arguments” >&2
    exit 1
fi

if [ ! -f $2 ]; then
    echo "File does not exist" <& 1
    exit 1
fi

for line in courselist.txt
    source $SCRIPT_PATH
done < filesizes.txt
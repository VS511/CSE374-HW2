#!/bin/bash


if [ $# -ne 2 ]; then
    echo “$0 Requires 2 arguments” >&2
    exit 1
fi

if [ ! -f $1 ]; then
    echo "File does not exist" <& 1
    exit 1
fi


#grep -oE '(http|https)://(.*?)" ' courses-index.html > $2
# (?:(?!X).)
grep -o -E "https?://[][[:alnum:]._~:/?#@!$&v(*+,;%-]+" courses-index.html > $2.txt

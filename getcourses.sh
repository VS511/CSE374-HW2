#!/bin/bash

#URLextractor ($1, $2) {
    if [ $# -ne 2 ]; then
        echo “$0 Requires 2 arguments” >&2
        exit 1
    fi

    if [ ! -f $1 ]; then
        echo "File does not exist" <& 1
        exit 1
    fi

    #grep -eo ^https?:// courses-index.html > output.txt
    #grep -eo "https?://\S+?\.html" courses-index.html > output.txt
    grep -oE '(http|https)://(.*).html' courses-index.html < $2.txt
    #sed -r 's/.*href="([^"]+).*/\1/g' courses-index.html
    #sed 's/<p><a href=\([^>]*\).*/\1/' courses-index.html
    #grep -o '<a href="http[^"]*"'|grep -v 'search?q=cache:'|grep -v '\.google\.'|sed 's/<a href="//;s/"$//' courses-index.html

#}
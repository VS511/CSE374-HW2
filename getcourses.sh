#!/bin/bash

if [ $# -ne 2 ]; then
  echo “$0 requires 2 arguments” >&2
  exit 1
fi

if [ ! -f $1 ]; then
  echo "File does not exist" <& 1
  exit 1
fi

grep -eo ^https?:// courses-index.html > output.txt
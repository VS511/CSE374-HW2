#! /bin/sh

if [ $# -ne 1 ]; then
  echo "$0 requires 1 argument"
  exit 1
fi

if wget -q "$1" > /dev/null; then
  wget -q -O - "$1" | wc -c
  exit 0
else
  echo "0"
  exit 1
fi
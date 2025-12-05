#!/bin/bash
# Run this from the folder that contains your React project 'dist' folder and this android project folder.
# Example: ./copy_dist.sh ../my-react-project/dist
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/dist"
  exit 1
fi
SRC="$1"
DST="app/src/main/assets/www"
rm -rf "$DST"
mkdir -p "$DST"
cp -r "$SRC"/* "$DST"/
echo "Copied $SRC to $DST"

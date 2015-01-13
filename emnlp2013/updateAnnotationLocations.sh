#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, you need to supply a valid path."
    exit 1
fi

if [ -z "$1" ]
  then
    echo "Empty argument supplied, you need to supply a valid path"
    exit 1
fi

newLocation=$1
oldLocation="^(.*?)+\/" # Matches everything up to the final / that is currently in the file

for x in `ls */annotations-train`; do sed -i -r "s|$oldLocation|$newLocation\/xmlfiles\/|" $x; done;
for x in `ls */annotations-dev`; do sed -i -r "s|$oldLocation|$newLocation\/xmlfiles\/|" $x; done;
for x in `ls */annotations-test`; do sed -i -r "s|$oldLocation|$newLocation\/xmlfiles\/|" $x; done;

for x in `ls */images-train`; do sed -i -r "s|$oldLocation|$newLocation\/images\/|" $x; done;
for x in `ls */images-dev`; do sed -i -r "s|$oldLocation|$newLocation\/images\/|" $x; done;
for x in `ls */images-test`; do sed -i -r "s|$oldLocation|$newLocation\/images\/|" $x; done;

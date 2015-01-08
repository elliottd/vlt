#!/bin/bash

for x in `ls */annotations-train`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;
for x in `ls */annotations-dev`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;
for x in `ls */annotations-test`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;

for x in `ls */images-train`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;
for x in `ls */images-dev`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;
for x in `ls */images-test`; do sed -i -r 's/vlt/vlt\/gold/' $x; done;

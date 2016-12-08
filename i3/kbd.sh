#!/bin/bash

# just a simple script to get the keyboard layout.
# the return of the query doesnt seem to be tab separated
# so: reverse, cut at first space and reverse again

echo "$(setxkbmap -query | grep layout | rev | cut -d' ' -f1 | rev)"

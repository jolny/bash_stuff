#!/bin/bash

if [ $# -eq 0 ] || [ $1 = "-h" ] ; then
 echo "$(basename "$0") -- Provide one argument, a single quoted regular expression. I.e. 'i*21[0-9]*.rar'; all corresponding rar files are extracted in their respective folders"
 exit
fi
# Provide one argument, a single quoted regular expression. I.e. 'i*21[0-9]*.rar'
# Script finds all corresponding rar files and extracts them in current folder

sudo find . -name $1 | while read filename; do sudo unrar x "$filename"; done;


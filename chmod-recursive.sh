#!/bin/bash

#This script sets a folder and subfolders to 775 and files to 644

if [ $# -eq 0 ] || [ $1 = "-h" ] ; then
 echo "$(basename "$0") [user@host] -- sets a folder and subfolders to 775 and files to 644"
 exit
fi


chmod -R u+rwX,go+rwX,o-w $1

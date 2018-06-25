#!/bin/bash

if [ $# -eq 0 ] || [ $1 = "-h" ] ; then
 echo "$(basename "$0") [user@host] -- connect to host and perform shutdown as sudo"
 exit
fi

ssh -t $1 "sudo shutdown 0"

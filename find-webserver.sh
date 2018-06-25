#!/bin/bash

set -m

usage="$(basename "$0") [-h] [-s subnet] [-p port] -- search local network for HTTP servers

where:
    -h  show this help text
    -s  subnet (default: 192.168.0 )
    -p  http port (default: 80)"

thread_find () {
 curl -s -m 5 $1.$2:$3 > /dev/null
 if [ 0 -eq $? ]; then
  echo $snet.$counter
 fi;
}

snet="192.168.0"
port="80"
while getopts ':hs:p:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    s) snet=$OPTARG
       ;;
    p) port=$OPTARG
       ;;
    :) printf "missing argument for -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "illegal option: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done

echo Searching $snet.x:$port...

counter=1
while [ $counter -le 254 ]
do
 ((counter++))
 thread_find "$snet" "$counter" "$port" &
done

while [ 1 ]; do
 fg 2> /dev/null; [ $? == 1 ] && break;
done

echo Search complete!

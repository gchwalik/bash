#!/bin/bash

declare -A hash 
# read in data 
while read key value && [[ -n $key ]] ; do
  hash[$key]="$value"
done
# show contents of hash, not guaranteed same order
for key in "${!hash[@]}"; do 
  echo "key $key ==> value ${hash[$key]}"
done


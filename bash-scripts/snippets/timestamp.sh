#!/bin/bash

# Standard Var log convention
# Sep 20 23:56:36

timestamp() {
    date '+%b %d %T'
}

count="0"

while [ $count -lt "15" ];
  do
    echo -e "$(timestamp) Hello World"
    sleep $count
    ((count++))
done

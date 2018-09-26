#!/bin/bash
#Thomas Payne CSCI3308 HW1
if [ $# -eq 0 ]
    then
    echo "Usage: Times.sh filename"
    exit 1
fi

# IFS is internal field separator, it determines the delimineter
# -k 3,3 indicates that the sort starts on column 3, and ends on column 3
while IFS=' ' read ID First Last x y z; do
  sum=$((x + y + z))
  avg=$((sum / 3))
  printf "%s [%s] %s, %s \n" $ID $avg $Last $First;
done < $1 | sort -k 3,3 -k 4,4 


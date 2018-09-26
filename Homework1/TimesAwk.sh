#!/bin/bash
#Thomas Payne CSCI3308 HW1

sort -k 3,3 -k 4,4 AthleteTimes.txt | awk '{avg=($4+$5+$6)/3}{avg=int(avg)}{print $1" ["avg"] "$3", "$2}'

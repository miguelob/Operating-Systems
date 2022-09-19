#!/bin/sh

# This script is used to benchmark the performance of the Mac OS X
START=$(gdate +%s.%N)
for i in `seq 1 $1`;
do
    exec ./a.out $i &
done
END=$(gdate +%s.%N)
DIFF=($END - $START)
CONVERT=$1000000;
ELAPSED=$(echo "$DIFF / $CONVERT" | bc)
echo "It took $ELAPSED milloseconds to write $1 files"
#!/bin/bash

START=`exec ./time.out`
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=`exec ./time.out`
DELTA=$((END-START))

echo Time Elapsed: $DELTA ms.

for i in `seq 1 $1`;
do
    rm $i &
done

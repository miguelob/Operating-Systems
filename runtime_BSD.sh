#!/bin/bash

START=$(exec ./time.out)
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=$(exec ./time.out)
DELTA=$((END-START))

echo $START $END $DELTA

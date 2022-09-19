#!/bin/bash

START=`date +%s.%N`
echo $START
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=`date +%s.%N`
DELTA=$((((END-START))/1000000))

echo $START $END $DELTA

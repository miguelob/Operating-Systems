#!/bin/bash

START=((`date +%s`*1000))
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=((`date +%s`*1000))
DELTA=$((((END-START))/1000000))

echo $START $END $DELTA

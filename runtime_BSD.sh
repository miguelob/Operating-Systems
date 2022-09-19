#!/bin/bash
START=$`date +%s`
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=$`date +%s`
echo $(END-START)
DELTA=$(($(END-START)/1000000))
echo $DELTA

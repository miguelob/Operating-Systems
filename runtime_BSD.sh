#!/bin/bash

#START=$(exec ./time.out)
exec ./time.out
START=$?
echo $START
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END=`exec ./time.out`
echo $END
DELTA=$((END-START))

echo $START $END $DELTA

#!/bin/bash
START =`date +%s`
for i in `seq 1 $1`;
do 
   exec ./a.out $i &
done
END =`date +%s`
DELTA = $((END-START ))

echo $START $END $DELTA

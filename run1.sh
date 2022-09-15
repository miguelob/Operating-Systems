#!/bin/bash
for i in 'seq 1 $1'
do 
   echo $i
   exec ./write $i &
done

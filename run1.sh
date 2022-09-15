#!/bin/bash
for i in 'seq 1 $1'
do 
   exec ./write $i &
done

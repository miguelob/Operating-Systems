#!/bin/bash

rm 1*
rm 2*
rm 3*
rm 4*
rm 5*
rm 6*
rm 7*
rm 8*
rm 9*

git stash
git pull --rebase
cc write.c
chmod -R 777 /usr/Operating-Systems

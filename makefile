#!/usr/bin/env bash
#File: makefile
#creats README.md

touch README.md
echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
dateNow=$(date +%c)
echo "1. makefile was run on $dateNow " >> README.md
numL=$(cat guessinggame.sh | wc -l)
numN=$(grep ^# guessinggame.sh  | wc -l)
numC=$(echo "$numL - $numN" | bc -l)
echo "2. The number of code-lines in guessinggame.sh. is $numC" >> README.md


#!/bin/sh
fname="Buckets.txt"
exec < $fname
c=0
first=0
sec=0
while read line; 
do
    for word in $line
    do
        c=$((c+1))
        rem=$(( $c % 2 ))
        if [ $rem -eq 0 ]
        then
        sec=$word
        else
        first=$word
        fi
        
    done
echo "The PlayerName and TeamName in the Range of Height $first to $sec"

awk -F ',' '{if($2>='$first' && $2<='$sec' ) print$1,$3}' players.csv

    
done < Buckets.txt




#!/bin/bash

filename="$1"
while read line;
do

scaffold=$(echo $line | awk '{print $1}')
transcript=$(echo $line | awk '{print $5}')

bedops -n 1 <(grep "$scaffold" Sorted_transcript.bed) <(grep "$transcript" Sorted_scaffold.bed)

done < "$filename"



#bedops -n 1 <(grep "dd_Smed_v6_11619_0_1" Sorted_transcript.bed) <(grep "scaffold1341" Sorted_scaffold.bed)


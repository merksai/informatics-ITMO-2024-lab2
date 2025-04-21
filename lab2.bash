#!/bin/bash

IFS="." read -r a1 a2 a3 a4 <<< "$1"

res=""
j=1
for n in "$a4" "$a3" "$a2" "$a1"
do
  cur="$n"
  for i in 1 2 3 4 5 6 7 8
  do
    res=$((cur % 2))$res
    cur=$((cur / 2))
  done
  if [[ $j -ne 4 ]]
  then
    res="."$res
  fi
  j=$((j + 1))
done

echo "$res"

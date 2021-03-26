#!/bin/bash -x

#Take three inputs a,b and c
echo -e "Enter 3 Numbers:\c"
read a b c

a1=$(($a + $b*$c))
echo "a+b*c= $a1"

a2=$(($a*$b + $c))
echo "a*b+c= $a2"

a3=`echo "scale=2;$c + $a/$b"| bc`
echo "c+a/b =$a3"

a4=`echo "scale=2;($a%$b) + $c"|bc`
echo "a%b+c =$a4"

declare -A ARITHMETIC

ARITHMETIC[key1]="$a1"
ARITHMETIC[key2]="$a2"
ARITHMETIC[key3]="$a3"
ARITHMETIC[key4]="$a4"
echo "In Dictionary = ${ARITHMETIC[@]}"

arr[1]="${ARITHMETIC[key1]}"
arr[2]="${ARITHMETIC[key2]}"
arr[3]="${ARITHMETIC[key3]}"
arr[4]="${ARITHMETIC[key4]}"
echo "In Array = ${arr[@]}"

echo -e "Computation results in Decending order"
printf '%s'  "${arr[@]}" | sort -nr

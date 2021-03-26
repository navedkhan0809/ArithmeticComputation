#!/bin/bash -x

#Take three inputs a,b and c
echo -e "Enter 3 Numbers:/c"
read a b c

a1=$(($a + $b*$c))
echo "a+b*c= $a1"

a2=$(($a*$b + $c))
echo "a*b+c= $a2"

a3=`echo "scale=2;$c + $a/$b"| bc`
echo "c+a/b =$a3"

a4=`echo "scale=2;($a%$b) + $c"|bc`
echo "a%b+c =$a4"

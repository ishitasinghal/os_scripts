#!/bin/bash
echo "Enter choice of operation"
echo "Enter A to add"
echo "Enter S to subtract"
echo "Enter M to multiply"
echo "Enter D to divide"
read c
echo "Enter one number"
read a
echo "Enter second number"
read b
case $c in 
A) echo -e "THE SUM IS : \c"
echo $(($a + $b ))  ;;
S) echo -e "THE SUBTRACTION IS \c"
echo $(($a - $b)) ;;
M) echo "RESULT : "
echo $(($a * $b ));;
D) echo "RESULT "
echo $(($a / $b));;
esac


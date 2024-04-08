#! /bin/bash
num1=0
num2=1
sum=0
list[0]=$num2
echo "sum: $num2"
for i in {0..10};
do
	sum=$((num1+num2))
	num1=$num2
	num2=$sum
	list[$((i+1))]=$sum
	echo "sum: $sum"
done
echo "Fibonacci liste: ${list[@]}"

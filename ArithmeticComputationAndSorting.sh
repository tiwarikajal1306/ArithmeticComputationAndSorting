#!/bin/bash -x
declare -A result
read -p "Take First input: " a
read -p "Take Second input: " b
read -p "Take Third input: " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))
g=$(($a%$b+$c))
result[a+b*c]="$d"
result[a*b+c]="$e"
result[c+a/b]="$f"
result[a%b+c]="$g"
echo "Result of first computation is: "  ${result[a+b*c]}
echo "Result of second computation is: " ${result[a*b+c]}
echo "Result of third computation is: " ${result[c+a/b]}
echo "Result of forth computation is: " ${result[a%b+c]}
counter=0;
for i in ${!result[@]}
do
array[counter++]=${result[$i]}
done
echo ${array[@]}
decending=`printf "%s\n" ${array[@]} | sort -nr `
echo $decending



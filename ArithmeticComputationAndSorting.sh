#!/bin/bash -x
read -p "Take First input: " a
read -p "Take Second input: " b
read -p "Take Third input: " c
d=$(($a+$b*$c))
e=$(($a*$b+$c))
f=$(($c+$a/$b))

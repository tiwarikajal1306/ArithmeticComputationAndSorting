#!/bin/bash -x
head=1;
tail=0;
check=$((RANDOM%2))
if [ $check -eq $head ]
then
	echo "Head is winner"
else
	echo "Tail is winner"
fi

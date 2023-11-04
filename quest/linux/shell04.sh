#! /bin/bash

num=100
output=""
i=2
while [ $i -le $num ]
do
	output="$output $i"
	i=`expr $i + 2`
done

echo $output

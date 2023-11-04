#! /bin/bash

echo "Enter two numbers:"
read  num1
read  num2

while :
do
echo "Choose an arithmetic operation (+, -, *, /):"
read operator
case "$operator" in
	"+" ) echo "The result:"`expr $num1 + $num2` 
		break ;;
	"-" ) echo "The result:"`expr $num1 - $num2` 
		break ;;
	"*" ) echo "The result:"`expr $num1 \* $num2` 
		break ;;
	"/" ) if [ $num2 = "0" ]; then
		echo "error devided by 0"
	else
		echo "The result:"`expr $num1 \/ $num2`
	fi	
		break ;;
	* ) echo "Operator is wrong";;
esac
done

#!/bin/bash
read -p "Dame un valor" n1
read -p "Dame otro valor" n2

if [ $n1 -eq $n2 ]
then
	echo "Los dos números son iguales"
else
	if [ $n1 -gt $n2 ]
	then
		echo "El número $n1 es mayor que $n2"
	else
		echo "El número $n2 es mayor que $n1"
	fi
fi
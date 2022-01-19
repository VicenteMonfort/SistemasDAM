#!/bin/bash
read -p "Dame un valor mayor que 0" n1

while [ $n1 -lt 1 ]
do
	read -p "Vuelve a darme el valor" n1
done
	
resto=$n1%2
if [ $resto -eq 0 ]
then
	echo "PAR"
else
	echo "IMPAR"
fi
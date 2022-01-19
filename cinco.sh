#!/bin/bash

suma=0
cont=0
read -p "Dame un nº" numero

while [ $numero -ne 0 ]; do
	suma=$((suma+numero))
	cont=$((cont+1))
	read -p "Dame un nº" numero
done

media=`echo "scale=2; $suma/$cont" | bc`
#media=$((suma/cont))
echo "La media es $media"
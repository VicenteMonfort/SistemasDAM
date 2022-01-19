#!/bin/bash
read -p "Dame un nota" n1

while [ $n1 -lt 0 ]
do
	read -p "Vuelve a darme el valor" n1
done
	
if [ $n1 -lt 5 ]; then
	echo "SUSPÉS"
else
	if [ $n1 -lt 6 ]; then
		echo "APROBADO"
	else
		if [ $n1 -lt 7 ]; then
			echo "BIEN"
		else
			if [ $n1 -lt 9 ]; then
				echo "NOTABLE"
			else
				echo "SOBRE"
			fi
		fi
	fi
fi
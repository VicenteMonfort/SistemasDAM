#!/bin/bash
read -p "Dame un día" dia
cont=0
while [ true ]; do
	for i in lunes martes miercoles jueves viernes sabado domingo; do
		cont=$((cont+1))
		if [ $cont = $dia ]; then
			echo "El dia es $i"
			exit
		fi
	done
done
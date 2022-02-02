#!/bin/bash


cont=0

while [ true ]
do
	for i in lunes martes miercoles jueves viernes sabado domingo
	do
		cont=$((cont+1))
		if [ $cont -eq $1 ]
		then
			echo $i
			exit
		fi
	done
done

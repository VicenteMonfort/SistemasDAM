#!/bin/bash

read -p "¿Cuántos litros has consumido?" litros

if [ $litros -le 50 ]; then
	coste=20
else
	if [ $litros -le 200 ]; then
		dif=$((litros-50))
		coste=`echo "scale=2; $litros*0.2+20" | bc`
	else
		dif=$((litros-200))
		coste=`echo "scale=2; $litros*0.1+50" | bc`
	fi
fi
echo "El coste total es $coste"
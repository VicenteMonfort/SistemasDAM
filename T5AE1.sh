#!/bin/bash

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
option=0

while [ $option -ne 5 ]; do
	#Panel de opciones
	echo "------------------"
	echo "| PANEL DE OPCIONES |"
	echo "| -------------------------------------------------------------------"
	echo "| Opción 1: Contar el número de veces que se ha logueado un usuario |"
	echo "| Opción 2: Días en un mes que ha habido usuarios                   |"
	echo "| Opción 3: Usuarios logueados en una fecha determinada             |"
	echo "| Opción 4: Última vez que se ha conectado un usuario               |"
	echo "| Opción 5: Salir                                                   |"
	echo "-------------------------------------------------------------------"
	read -p "INTRODUCE QUÉ QUIERES CONSULTAR: " option
	echo "-------------------------------------"
	#OPCIÓN 1
	if [ $option -eq 1 ]; then
		timeuser=0
		read -p "Introduce el nombre del usuario: " nameuser
		while [ $numlinea -le $maxlineas ]; do
			linea=`cat usuarios.txt | head -$numlinea | tail -1`
			user=`echo $linea | awk '{print $1}'`

			if [ $user = $nameuser ]; then
				timeuser=$((timeuser+1))
			fi
			numlinea=$((numlinea+1))
		done
		echo "El usuario $nameuser se ha conectado $timeuser veces"
	fi

	#OPCIÓN 2 (ERROR no visualiza ningún día)
	if [ $option -eq 2 ]; then
		read -p "Introduce el mes del que deseas saber qué días ha habido conexión: " mesito
		echo "Los días de conexión del mes de $mesito han sido:"
		while [ $numlinea -le $maxlineas ]; do
			linea=`cat usuarios.txt | head -$numlinea | tail -1`
			dia=`echo $linea | awk '{print $2}'`
			mes=`echo $linea | awk '{print $3}'`

			echo $mes
			echo $mesito
			echo ""
			sleep 1

			if [ $mes = $mesito ]; then
			 echo $dia
			fi
			numlinea=$((numlinea+1))
		done
	fi

	#OPCIÓN 3
	if [ $option -eq 3 ]; then
		numlinea=1
		read -p "Introduce el mes: " month
		read -p "Introduce el día:" day
		echo "Los usuarios que se han conectado el $day de $month son:"
		while [ $numlinea -le $maxlineas ]; do
			linea=`cat usuarios.txt | head -$numlinea | tail -1`
			user=`echo $linea | awk '{print $1}'`
			dia=`echo $linea | awk '{print $2}'`
			mes=`echo $linea | awk '{print $3}'`

			if [ $mes = $month ] & [ $dia = $day ]; then
				echo $user
			fi
			numlinea=$((numlinea+1))
		done
	fi

	#OPCIÓN 4
	if [ $option -eq 4 ]; then
		numlinea=1
		read -p "Introduce el nombre del usuario: " nameuser
		while [ $numlinea -le $maxlineas ]; do
			linea=`cat usuarios.txt | head -$numlinea | tail -1`
			user=`echo $linea | awk '{print $1}'`
			dia=`echo $linea | awk '{print $2}'`
			mes=`echo $linea | awk '{print $3}'`

			if [ $user = $nameuser ]; then
				diaultim=$dia
				mesultim=$mes
			fi
			numlinea=$((numlinea+1))
		done
		echo "El usuario $nameuser se ha conectado por última vez el $diaultim del mes $mesultim"
	fi
done

#!/bin/bash
maxlineas=`cat precipitaciones.txt | wc -l`
cont=1
total=0

while [ $cont -le $maxlineas ]; do
 #me quedo con los litros de cada linea
 litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`

 #acumulo los litros en una variable
 total=$((total+litros))
 cont=$((cont+1))
done

#calculo la media dividiendo el total de litros entre maxlineas
media=$((total/maxlineas))
echo "La media es $media"

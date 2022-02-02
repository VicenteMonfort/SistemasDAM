#!/bin/bash
maxlineas=`cat listado.txt | wc -l`
cont=1
totalwin=0
totallin=0
totalwinp=0
totallinp=0

while [ $cont -le $maxlineas ]; do
 #me quedo con el día de cada linea
 linea=`cat listado.txt | head -$cont | tail -1` 
 user=`echo $linea | awk '{print $1}'`
 os=`echo $linea | awk '{print $2}'`
 proc=`echo $linea | awk '{print $3}'`

 if [ $os = "Windows" ]; then
  totalwin=$((totalwin+1))
  totalwinp=$((totalwinp+proc))
 else
  totallin=$((totallin+1))
  totallinp=$((totallinp+proc))
 fi
 cont=$((cont+1))
done
echo "Procesos Windows -- $totalwin $totalwinp"
echo "Procesos Linux -- $totallin $totallinp"

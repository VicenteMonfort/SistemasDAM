#este script necesita que diasemana.sh esté en la misma carpeta.
#se ejecuta pasándole el día de la semana en número

#!/bin/bash
maxlineas=`cat precipitaciones.txt | wc -l`
cont=1


while [ $cont -le $maxlineas ]; do
 #me quedo con el día de cada linea
 dia=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $1}'`
 litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`

 if [ $litros -eq 0 ]; then
  diaenletra=`./diasemana.sh $dia`
  echo "El día $diaenletra no llovió"
 fi
 cont=$((cont+1))
done

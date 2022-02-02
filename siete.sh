#!/bin/bash

if [ -d $1 ]; then
  echo `./seis.sh $1`
else
 echo "El directorio $1 no existe"
fi

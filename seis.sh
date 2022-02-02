#!/bin/bash

numero=`ls $1/*.txt | wc -w`
rm $1/*.txt
echo "hemos borrado $numero ficheros con extensión txt"

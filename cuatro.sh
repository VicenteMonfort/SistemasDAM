#!/bin/bash
read -p "Dame un nº máximo > 0" n1
#controlaría que fuera > 0

for i in `seq 0 $n1`; do
	echo "$i"
done
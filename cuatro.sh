#!/bin/bash
pares=0
impares=0
resto=0

echo "PARES"
echo "-----"
for i in $(cat numeros.txt); do
 resto=$((i%2))
 if [ $resto -eq 0 ]; then
  echo $i
  pares=$((pares+1))
 fi
done
echo "TOTAL PARES $pares"


echo "IMPARES"
echo "-------"
for i in $(cat numeros.txt); do
 resto=$((i%2))
 if [ $resto -ne 0 ]; then
  echo $i
  impares=$((impares+1))
 fi
done
echo "TOTAL IMPARES $impares"


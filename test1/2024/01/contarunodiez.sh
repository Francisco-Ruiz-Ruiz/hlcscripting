#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

echo "Contar del uno al 10"
suma=0

for i in {1..10}; do
	echo "El numero actual es: "$i
	suma=$(($suma+$i))
	echo "La suma de este numero y el anterior es: " $suma
done

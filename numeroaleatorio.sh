#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

min=$1
max=$2

numero=$(($min + RANDOM% ($max - $min + 1 )))

read -p "Intenta adivinar el numero..." respuesta
counter=1

if [ $respuesta -gt $numero ]; then
	echo "Es menos"
elif [ $respuesta -lt $numero ]; then
		echo "Es mayor"
fi
	

while [ $respuesta -ne $numero ] ; do
	echo "Fallaste, intentalo de nuevo"
	read -p "Intenta adivinar el numero..." respuesta
	counter=$((counter+1))
	if [ $respuesta -gt $numero ]; then
		echo "Es menor"
	elif [ $respuesta -lt $numero ]; then
		echo "Es mayor"
	fi
done

echo "Enhorabuena, acertaste"
echo "Necesitaste $counter intentos"
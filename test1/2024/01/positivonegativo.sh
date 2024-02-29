#!/bin/bash

# script: script
# descripcion: suma con variables
# autor: Francisco Ruiz

declare -i a
echo "Introduzca el numero"
read a

if [ $a -gt 0 ]; then
	echo "El numero es positivo"
elif [ $a -eq 0 ]; then
	echo "El numero es 0"
else
	echo "El numero es negativo"
fi

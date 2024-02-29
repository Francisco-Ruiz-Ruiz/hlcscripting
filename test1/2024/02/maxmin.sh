#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

if [[ $# -eq 0 ]] ; then
   echo "Debes introducir al menos un parámetro"
   exit 1
fi

minimo=$1
maximo=$1

for numero in "$@"; do
    echo $numero
    if [ $numero -gt $maximo ]; then
        maximo=$numero
    fi
    if [ $numero -lt $minimo ]; then
        minimo=$numero
    fi
done

echo "El maximo es $maximo"
echo "El minimo es $minimo"


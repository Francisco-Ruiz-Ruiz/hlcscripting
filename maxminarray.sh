#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

numeros=(2 4 4 6 7 8 11 0 1 2 3 5 8 5 2 -11)

minimo=${numeros[0]}
maximo=${numeros[0]}

for numero in "${numeros[@]}"; do
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


#!/bin/bash

# script: script
# descripcion: script para saludar
# autor: Francisco Ruiz

echo "Numero de argumentos: " $#
echo "Nombre del script :" $0
echo "Primer argumento: " $1
echo "Segundo argumento: " $2
shift
echo "Primer argumento " $1

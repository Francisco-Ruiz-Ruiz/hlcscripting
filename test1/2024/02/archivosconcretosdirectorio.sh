#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

echo "Listado de archivos"

contador=0
directorio=$1

echo $directorio

#if [ $# -eq 0 ]; then
#	exit
#if

for archivo in $1/*.txt; do
	if [ -f $archivo ]; then
		echo $archivo
		let contador++
	fi
done

echo $contador

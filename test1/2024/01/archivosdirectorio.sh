#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

echo "Listado de archivos"

ruta=$(pwd)
contador=0

for archivo in $ruta/*; do
	echo $archivo
	let contador++
done

echo "Total de archivos: " $contador

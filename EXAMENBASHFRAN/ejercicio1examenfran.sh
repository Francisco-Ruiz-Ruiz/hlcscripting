#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

if [[ $# -ne 2 ]] ; then
   echo "Debes introducir dos parametros"
   echo "Ejemplo: $0 parametro1 parametro2"
   exit 1
fi

ruta1="$1"
ruta2="$2"

if [ ! -d "$ruta1" ]; then
    echo "El directorio $1 no existe"
    exit 2
fi

if [ ! -d "$ruta2" ]; then
    mkdir -p $ruta2
fi


for archivo in $ruta1/*; do
    fecha=$(stat -c %y "$archivo")
	ano=$(date -d "$fecha" +%Y)
    mes=$(date -d "$fecha" +%m)
    if [ ! -d "$ruta2/$ano/$mes" ]; then
        mkdir -p "$ruta2/$ano/$mes"
    fi
    cp "$archivo" "$ruta2/$ano/$mes"
done

echo "Archivos copiados correctamente"


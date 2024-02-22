#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

if [[ $# -eq 0 ]] ; then
   echo "Debes introducir al menos un parámetro"
   exit 1
fi

i=1
while [ $i -le $# ] do
    if grep -q "^$@:" /etc/passwd
        then
            echo "El usuario $@ existe en el sistema"
        else
            echo "El usuario $@ no existe en el sistema"
            contra = openssl rand -base64 8 | tr -dc 'a-zA-Z0-9'
            echo $contra

fi
done
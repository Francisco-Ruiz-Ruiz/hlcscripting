#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

declare -a listaIP=(192.168.112.154 192.168.112.224 192.168.112.36 192.168.112.96)

fichero="ip_respuesta.txt"

for ip in "${listaIP[@]}"; do
	echo "Haciendo ping a $ip" | tee -a "fichero.txt"
	ping -c 4 $ip | tee -a "fichero.txt"

done

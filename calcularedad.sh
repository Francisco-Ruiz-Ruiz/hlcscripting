#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

if [ $# -ne 3 ]; then
	echo "Formato: $0 dia mes año"
	exit 1
fi

diaact=$(date +"%d")
mesact=$(date +"%m")
anoact=$(date +"%Y")

anoedad=$(($anoact-$3))

if [[ $mesact -lt $2 ]]; then
	anoedad=$(($anoedad - 1))
fi

if [[ $mesact -eq $2 ]]; then
	if [[ $diaact -lt $1 ]]; then
		anoedad=$(($anoedad - 1))
	fi
fi

echo "tienes $anoedad años"

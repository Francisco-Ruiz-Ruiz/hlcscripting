#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

dia=$(date +%u)
if [ $dia -gt 5 ]; then
	echo "Es fin de semana"
else
	echo "Es dia laborable"
fi
